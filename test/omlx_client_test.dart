import 'dart:convert';
import 'dart:typed_data';
import 'package:domlx/domlx.dart';
import 'package:domlx/src/client/http_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('OmlxClient Endpoints with MockClient', () {
    test('GET /health returns health response', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'GET');
        expect(request.url.path, '/health');

        return http.Response(
          jsonEncode({
            'status': 'healthy',
            'version': '0.3.0',
            'default_model': 'mlx-community/Qwen2.5-7B-Instruct-4bit',
            'engine_pool': {'active_engines': 1},
            'mcp': {'connected': true},
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final health = await client.health();
      expect(health.isHealthy, isTrue);
      expect(health.version, '0.3.0');
      expect(health.defaultModel, 'mlx-community/Qwen2.5-7B-Instruct-4bit');
      expect(health.enginePool?['active_engines'], 1);
    });

    test('GET /v1/models returns models list', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'GET');
        expect(request.url.path, '/v1/models');
        expect(request.headers['authorization'], 'Bearer test-token');

        return http.Response(
          jsonEncode({
            'object': 'list',
            'data': [
              {
                'id': 'mlx-community/Qwen2.5-7B-Instruct-4bit',
                'object': 'model',
                'owned_by': 'omlx',
              },
              {
                'id': 'mlx-community/whisper-large-v3',
                'object': 'model',
                'owned_by': 'omlx',
              }
            ]
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        apiKey: 'test-token',
        client: mock,
      );

      final models = await client.listModels();
      expect(models.data.length, 2);
      expect(models.data.first.id, 'mlx-community/Qwen2.5-7B-Instruct-4bit');
    });

    test('POST /v1/models/{id}/unload unloads model with URL encoding', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/models/mlx-community%2FQwen2.5-7B/unload');

        return http.Response(
          jsonEncode({'status': 'unloaded', 'success': true}),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final res = await client.models.unload('mlx-community/Qwen2.5-7B');
      expect(res.success, isTrue);
      expect(res.modelId, 'mlx-community/Qwen2.5-7B');
    });

    test('POST /v1/chat/completions (non-streaming) returns response', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/chat/completions');

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['model'], 'test-model');
        expect(body['stream'], isFalse);

        return http.Response(
          jsonEncode({
            'id': 'chatcmpl-123',
            'object': 'chat.completion',
            'created': 1710000000,
            'model': 'test-model',
            'choices': [
              {
                'index': 0,
                'message': {
                  'role': 'assistant',
                  'content': 'Hello there!',
                  'reasoning_content': 'Thinking steps...',
                },
                'finish_reason': 'stop',
              }
            ],
            'usage': {
              'prompt_tokens': 10,
              'completion_tokens': 5,
              'total_tokens': 15,
              'cached_tokens': 4,
              'prefill_duration': 0.02,
              'generation_duration': 0.08,
            }
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final response = await client.chat.create(
        ChatCompletionRequest(
          model: 'test-model',
          messages: [ChatMessage.user('Hi')],
        ),
      );

      expect(response.id, 'chatcmpl-123');
      expect(response.firstText, 'Hello there!');
      expect(response.firstReasoningContent, 'Thinking steps...');
      expect(response.usage?.cachedTokens, 4);
      expect(response.usage?.prefillDuration, 0.02);
    });

    test('POST /v1/chat/completions (streaming) handles SSE and keep-alive', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/chat/completions');

        final sseEvents = [
          ': keep-alive\n\n',
          'data: {"id":"chatcmpl-chunk-1","object":"chat.completion.chunk","created":1710000000,"model":"test-model","choices":[{"index":0,"delta":{"role":"assistant","reasoning_content":"Let me think."},"finish_reason":null}]}\n\n',
          ': keep-alive\n\n',
          'data: {"id":"chatcmpl-chunk-2","object":"chat.completion.chunk","created":1710000000,"model":"test-model","choices":[{"index":0,"delta":{"content":"Hi"},"finish_reason":null}]}\n\n',
          'data: {"id":"chatcmpl-chunk-3","object":"chat.completion.chunk","created":1710000000,"model":"test-model","choices":[{"index":0,"delta":{"content":"!"},"finish_reason":"stop"}],"usage":{"prompt_tokens":5,"completion_tokens":2,"total_tokens":7}}\n\n',
          'data: [DONE]\n\n',
        ];

        final stream = Stream.fromIterable(sseEvents.map(utf8.encode));
        return http.StreamedResponse(
          stream,
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final chunks = await client.chat
          .createStream(
            ChatCompletionRequest(
              model: 'test-model',
              messages: [ChatMessage.user('Hi')],
            ),
          )
          .toList();

      expect(chunks.length, 3);
      expect(chunks[0].firstReasoningContent, 'Let me think.');
      expect(chunks[1].firstContent, 'Hi');
      expect(chunks[2].firstContent, '!');
      expect(chunks[2].usage?.totalTokens, 7);
    });

    test('POST /v1/embeddings returns embedding vectors', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/embeddings');

        return http.Response(
          jsonEncode({
            'object': 'list',
            'model': 'embedding-model',
            'data': [
              {
                'index': 0,
                'object': 'embedding',
                'embedding': [0.1, 0.2, 0.3],
              }
            ],
            'usage': {
              'prompt_tokens': 4,
              'total_tokens': 4,
            }
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final vector = await client.embeddings.createVector(
        model: 'embedding-model',
        text: 'test text',
      );

      expect(vector, [0.1, 0.2, 0.3]);
    });

    test('POST /v1/rerank returns sorted rankings', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/rerank');

        return http.Response(
          jsonEncode({
            'model': 'rerank-model',
            'results': [
              {
                'index': 1,
                'relevance_score': 0.95,
                'document': 'Most relevant doc',
              },
              {
                'index': 0,
                'relevance_score': 0.12,
                'document': 'Less relevant doc',
              }
            ],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final results = await client.rerank.rank(
        model: 'rerank-model',
        query: 'search query',
        documents: ['doc 0', 'doc 1'],
      );

      expect(results.length, 2);
      expect(results.first.index, 1);
      expect(results.first.relevanceScore, 0.95);
      expect(results.first.document, 'Most relevant doc');
    });

    test('POST /v1/rerank handles nested document Map objects', () async {
      final mock = MockClient((request) async {
        return http.Response(
          jsonEncode({
            'model': 'rerank-model',
            'results': [
              {
                'index': 0,
                'relevance_score': 0.99,
                'document': {'text': 'Nested doc text'},
              }
            ],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final results = await client.rerank.rank(
        model: 'rerank-model',
        query: 'search query',
        documents: ['doc 0'],
      );

      expect(results.length, 1);
      expect(results.first.document, 'Nested doc text');
    });

    test('Throws OmlxApiException on 401 Unauthorized', () async {
      final mock = MockClient((request) async {
        return http.Response(
          jsonEncode({'detail': 'API key required'}),
          401,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      expect(
        () => client.listModels(),
        throwsA(
          isA<OmlxApiException>()
              .having((e) => e.statusCode, 'statusCode', 401)
              .having((e) => e.isUnauthorized, 'isUnauthorized', isTrue)
              .having((e) => e.message, 'message', 'API key required'),
        ),
      );
    });

    test('Throws OmlxApiException on 507 Insufficient Memory', () async {
      final mock = MockClient((request) async {
        return http.Response(
          jsonEncode({
            'error': {
              'message': 'Model exceeds system memory',
              'type': 'insufficient_memory',
              'code': 'insufficient_memory',
            }
          }),
          507,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      expect(
        () => client.chat.create(
          ChatCompletionRequest(
            model: 'huge-model',
            messages: [ChatMessage.user('hi')],
          ),
        ),
        throwsA(
          isA<OmlxApiException>()
              .having((e) => e.statusCode, 'statusCode', 507)
              .having((e) => e.isInsufficientMemory, 'isInsufficientMemory', isTrue)
              .having((e) => e.message, 'message', 'Model exceeds system memory'),
        ),
      );
    });

    test('POST /v1/audio/transcriptions sends multipart request with file', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/audio/transcriptions');
        expect(request, isA<http.MultipartRequest>());

        final multipart = request as http.MultipartRequest;
        expect(multipart.fields['model'], 'whisper-large-v3');
        expect(multipart.files.length, 1);
        expect(multipart.files.first.field, 'file');
        expect(multipart.files.first.filename, 'speech.wav');

        return http.StreamedResponse(
          Stream.value(utf8.encode(jsonEncode({'text': 'Hello world'}))),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final response = await client.audio.transcribe(
        AudioTranscriptionRequest(
          model: 'whisper-large-v3',
          filename: 'speech.wav',
          fileBytes: [1, 2, 3, 4],
        ),
      );

      expect(response.text, 'Hello world');
    });

    test('postMultipart sends multiple files', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/upload');
        expect(request, isA<http.MultipartRequest>());

        final multipart = request as http.MultipartRequest;
        expect(multipart.files.length, 2);
        expect(multipart.files[0].field, 'file1');
        expect(multipart.files[0].filename, 'doc1.txt');
        expect(multipart.files[1].field, 'file2');
        expect(multipart.files[1].filename, 'doc2.txt');

        return http.StreamedResponse(
          Stream.value(utf8.encode(jsonEncode({'success': true, 'count': 2}))),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: mock,
      );

      final res = await client.postMultipart(
        '/upload',
        files: [
          http.MultipartFile.fromString('file1', 'content 1', filename: 'doc1.txt'),
          http.MultipartFile.fromString('file2', 'content 2', filename: 'doc2.txt'),
        ],
      );

      expect(res['success'], isTrue);
      expect(res['count'], 2);
    });

    test('OmlxHttpClient preserves base URL path prefixes and UTF-8 encoding', () async {
      final mock = MockClient((request) async {
        expect(request.url.toString(), 'http://localhost:8000/prefix/v1/models');
        // Non-ASCII and emojis without charset=utf-8 in Content-Type
        return http.Response.bytes(
          utf8.encode(jsonEncode({'object': 'list', 'data': <dynamic>[], 'note': '日本語 🚀'})),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000/prefix'),
        client: mock,
      );

      final res = await client.get('/v1/models');
      expect(res['note'], '日本語 🚀');
    });

    test('ModelsService.status parses models list format', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'GET');
        expect(request.url.path, '/v1/models/status');

        return http.Response(
          jsonEncode({
            'models': [
              {
                'model_id': 'model-1',
                'loaded': true,
                'engine_type': 'mlx',
              },
              {
                'id': 'model-2',
                'loaded': false,
              }
            ]
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final statuses = await client.models.status();
      expect(statuses.length, 2);
      expect(statuses[0].modelId, 'model-1');
      expect(statuses[0].isLoaded, isTrue);
      expect(statuses[0].engineType, 'mlx');
      expect(statuses[1].modelId, 'model-2');
      expect(statuses[1].isLoaded, isFalse);
    });

    test('POST /v1/chat/completions (streaming) parses tool call deltas with index and null id', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        final sseEvents = [
          'data: {"id":"chatcmpl-chunk-tool-1","object":"chat.completion.chunk","created":1710000000,"model":"test-model","choices":[{"index":0,"delta":{"role":"assistant","tool_calls":[{"index":0,"id":"call_abc","type":"function","function":{"name":"get_weather","arguments":""}}]},"finish_reason":null}]}\n\n',
          'data: {"id":"chatcmpl-chunk-tool-2","object":"chat.completion.chunk","created":1710000000,"model":"test-model","choices":[{"index":0,"delta":{"tool_calls":[{"index":0,"function":{"arguments":"{\\"city\\": \\"Paris\\"}"}}]},"finish_reason":"tool_calls"}]}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final chunks = await client.chat
          .createStream(
            ChatCompletionRequest(
              model: 'test-model',
              messages: [ChatMessage.user('What is the weather in Paris?')],
            ),
          )
          .toList();

      expect(chunks.length, 2);
      expect(chunks[0].firstDelta?.toolCalls?.first.id, 'call_abc');
      expect(chunks[0].firstDelta?.toolCalls?.first.index, 0);
      expect(chunks[0].firstDelta?.toolCalls?.first.function.name, 'get_weather');

      expect(chunks[1].firstDelta?.toolCalls?.first.id, isNull);
      expect(chunks[1].firstDelta?.toolCalls?.first.index, 0);
      expect(chunks[1].firstDelta?.toolCalls?.first.function.arguments, '{"city": "Paris"}');
    });

    test('ChatService streamReasoning and streamEvents stream reasoning and content', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        final sseEvents = [
          'data: {"id":"c-1","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"role":"assistant","reasoning_content":"Let me calculate"},"finish_reason":null}]}\n\n',
          'data: {"id":"c-2","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"reasoning_content":" 2+2=4."},"finish_reason":null}]}\n\n',
          'data: {"id":"c-3","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"content":"The answer"},"finish_reason":null}]}\n\n',
          'data: {"id":"c-4","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"content":" is 4."},"finish_reason":"stop"}]}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final reasoningTokens = await client.chat
          .streamReasoning(model: 'test', prompt: 'calculate 2+2')
          .toList();
      expect(reasoningTokens, ['Let me calculate', ' 2+2=4.']);

      final events = await client.chat
          .streamEvents(model: 'test', prompt: 'calculate 2+2')
          .toList();
      expect(events.length, 4);
      expect(events[0], isA<ChatReasoningEvent>().having((e) => e.text, 'text', 'Let me calculate'));
      expect(events[1], isA<ChatReasoningEvent>().having((e) => e.text, 'text', ' 2+2=4.'));
      expect(events[2], isA<ChatContentEvent>().having((e) => e.text, 'text', 'The answer'));
      expect(events[3], isA<ChatContentEvent>().having((e) => e.text, 'text', ' is 4.'));
    });

    test('ResponsesService createStream streams SSE events', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        expect(request.url.path, '/v1/responses');
        final sseEvents = [
          'data: {"id":"resp-1","status":"in_progress"}\n\n',
          'data: {"id":"resp-1","status":"completed","output_text":"Hello"}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final chunks = await client.createStreamResponse(
        const ResponsesRequest(
          model: 'qwen',
          input: 'hello',
        ),
      ).toList();

      expect(chunks.length, 2);
      expect(chunks[0]['status'], 'in_progress');
      expect(chunks[1]['output_text'], 'Hello');
    });

    test('postStream handles stream connection errors gracefully', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        return http.StreamedResponse(
          Stream<List<int>>.error(Exception('Connection reset by peer')),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: mock,
      );

      expect(
        () => client.postStream('/stream').toList(),
        throwsA(
          isA<OmlxNetworkException>().having(
            (e) => e.message,
            'message',
            contains('Error reading stream data'),
          ),
        ),
      );
    });

    test('AudioService.speech returns Uint8List binary bytes', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/audio/speech');
        return http.Response.bytes(
          [10, 20, 30, 40],
          200,
          headers: {'content-type': 'audio/mpeg'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final bytes = await client.audio.speech(
        const AudioSpeechRequest(
          model: 'tts-1',
          input: 'Hello',
          voice: 'alloy',
        ),
      );

      expect(bytes, isA<Uint8List>());
      expect(bytes, [10, 20, 30, 40]);
    });

    test('CompletionsService creates text completion and handles shortcuts', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/completions');

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['model'], 'text-davinci-003');
        expect(body['prompt'], 'Once upon a time');

        return http.Response(
          jsonEncode({
            'id': 'cmpl-123',
            'object': 'text_completion',
            'created': 1710000000,
            'model': 'text-davinci-003',
            'choices': [
              {
                'text': ' in a galaxy far, far away...',
                'index': 0,
                'finish_reason': 'stop',
              }
            ],
            'usage': {
              'prompt_tokens': 4,
              'completion_tokens': 8,
              'total_tokens': 12,
            }
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final completion = await client.createCompletion(
        const CompletionRequest(
          model: 'text-davinci-003',
          prompt: 'Once upon a time',
        ),
      );

      expect(completion.id, 'cmpl-123');
      expect(completion.firstText, ' in a galaxy far, far away...');
      expect(completion.usage?.totalTokens, 12);

      final generated = await client.completions.generate(
        model: 'text-davinci-003',
        prompt: 'Once upon a time',
      );
      expect(generated, ' in a galaxy far, far away...');
    });

    test('CompletionsService createStream and streamText stream typed TextCompletion chunks', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/completions');

        final sseEvents = [
          'data: {"id":"cmpl-s-1","object":"text_completion","created":1710000000,"model":"text-davinci-003","choices":[{"text":"Hello","index":0,"finish_reason":null}]}\n\n',
          'data: {"id":"cmpl-s-2","object":"text_completion","created":1710000000,"model":"text-davinci-003","choices":[{"text":" world","index":0,"finish_reason":"stop"}]}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final chunks = await client.createStreamCompletion(
        const CompletionRequest(
          model: 'text-davinci-003',
          prompt: 'Hi',
        ),
      ).toList();

      expect(chunks.length, 2);
      expect(chunks[0], isA<TextCompletion>());
      expect(chunks[0].firstText, 'Hello');
      expect(chunks[1].firstText, ' world');

      final tokens = await client.streamCompletionText(
        model: 'text-davinci-003',
        prompt: 'Hi',
      ).toList();
      expect(tokens, ['Hello', ' world']);
    });

    test('OmlxClient shortcuts and baseUrl/close properties', () async {
      final mock = MockClient((request) async {
        if (request.url.path == '/v1/chat/completions') {
          return http.Response(
            jsonEncode({
              'id': 'chat-1',
              'object': 'chat.completion',
              'created': 1710000000,
              'model': 'qwen',
              'choices': [
                {
                  'index': 0,
                  'message': {'role': 'assistant', 'content': 'Chat answer'},
                }
              ]
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        } else if (request.url.path == '/v1/embeddings') {
          return http.Response(
            jsonEncode({
              'object': 'list',
              'model': 'emb-1',
              'data': [
                {'index': 0, 'embedding': [0.5, 0.6]}
              ]
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        } else if (request.url.path == '/v1/rerank') {
          return http.Response(
            jsonEncode({
              'model': 'rr-1',
              'results': [
                {'index': 0, 'relevance_score': 0.8, 'document': 'doc a'}
              ]
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        } else if (request.url.path == '/v1/responses') {
          return http.Response(
            jsonEncode({
              'id': 'resp-1',
              'object': 'response',
              'created': 1710000000,
              'model': 'qwen',
              'status': 'completed',
              'output': <dynamic>[],
              'output_text': 'Response text',
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        }
        return http.Response('{}', 200);
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      expect(client.baseUrl.toString(), 'http://localhost:8000');

      // createChatCompletion shortcut
      final chatResp = await client.createChatCompletion(
        ChatCompletionRequest(model: 'qwen', messages: [ChatMessage.user('Hi')]),
      );
      expect(chatResp.firstText, 'Chat answer');

      // generateText shortcut with systemPrompt
      final genText = await client.generateText(
        model: 'qwen',
        prompt: 'Hi',
        systemPrompt: 'Be concise',
        temperature: 0.7,
        maxTokens: 50,
      );
      expect(genText, 'Chat answer');

      // createEmbedding shortcut
      final embResp = await client.createEmbedding(
        const EmbeddingRequest(model: 'emb-1', input: 'test'),
      );
      expect(embResp.data.first.embedding, [0.5, 0.6]);

      // createRerank shortcut
      final rrResp = await client.createRerank(
        const RerankRequest(model: 'rr-1', query: 'q', documents: ['doc a']),
      );
      expect(rrResp.results.first.document, 'doc a');

      // createResponse shortcut
      final respResp = await client.createResponse(
        const ResponsesRequest(model: 'qwen', input: 'input text'),
      );
      expect(respResp.outputText, 'Response text');

      // close()
      expect(() => client.close(), returnsNormally);
    });

    test('ChatService generateText and streamText with systemPrompt and streaming shortcuts', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        final bodyString = await bodyStream.transform(utf8.decoder).join();
        final body = jsonDecode(bodyString);
        expect(body['messages'][0]['role'], 'system');
        expect(body['messages'][0]['content'], 'System instructions');
        expect(body['messages'][1]['role'], 'user');
        expect(body['messages'][1]['content'], 'Hello');

        final sseEvents = [
          'data: {"id":"c-1","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"content":"Hello"},"finish_reason":null}]}\n\n',
          'data: {"id":"c-2","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"content":"!"},"finish_reason":"stop"}]}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(
        baseUrl: 'http://localhost:8000',
        client: mock,
      );

      final tokens = await client.streamText(
        model: 'test',
        prompt: 'Hello',
        systemPrompt: 'System instructions',
      ).toList();
      expect(tokens, ['Hello', '!']);

      final chunks = await client.createStreamChatCompletion(
        ChatCompletionRequest(
          model: 'test',
          messages: [
            ChatMessage.system('System instructions'),
            ChatMessage.user('Hello'),
          ],
        ),
      ).toList();
      expect(chunks.length, 2);
    });

    test('ChatService streamEvents and streamReasoning with systemPrompt', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        final bodyString = await bodyStream.transform(utf8.decoder).join();
        final body = jsonDecode(bodyString);
        expect(body['messages'][0]['role'], 'system');

        final sseEvents = [
          'data: {"id":"c-1","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"reasoning_content":"Thinking"},"finish_reason":null}]}\n\n',
          'data: {"id":"c-2","object":"chat.completion.chunk","created":1710000000,"model":"test","choices":[{"index":0,"delta":{"content":"Result"},"finish_reason":"stop"}]}\n\n',
          'data: [DONE]\n\n',
        ];

        return http.StreamedResponse(
          Stream.fromIterable(sseEvents.map(utf8.encode)),
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      });

      final client = OmlxClient(baseUrl: 'http://localhost:8000', client: mock);

      final reasoning = await client.chat.streamReasoning(
        model: 'test',
        prompt: 'Hello',
        systemPrompt: 'Sys',
      ).toList();
      expect(reasoning, ['Thinking']);

      final events = await client.chat.streamEvents(
        model: 'test',
        prompt: 'Hello',
        systemPrompt: 'Sys',
      ).toList();
      expect(events.length, 2);
      expect(events[0], isA<ChatReasoningEvent>());
      expect(events[1], isA<ChatContentEvent>());
    });

    test('AudioService transcribe with optional fields and non-Map fallback', () async {
      final mock = MockClient.streaming((request, bodyStream) async {
        final multipart = request as http.MultipartRequest;
        expect(multipart.fields['language'], 'en');
        expect(multipart.fields['prompt'], 'Specialized term');
        expect(multipart.fields['response_format'], 'text');
        expect(multipart.fields['temperature'], '0.2');

        return http.StreamedResponse(
          Stream.value(utf8.encode(jsonEncode('Raw transcription text string'))),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(baseUrl: 'http://localhost:8000', client: mock);
      final resp = await client.audio.transcribe(
        AudioTranscriptionRequest(
          model: 'whisper',
          filename: 'audio.wav',
          fileBytes: [0, 1],
          language: 'en',
          prompt: 'Specialized term',
          responseFormat: 'text',
          temperature: 0.2,
        ),
      );
      expect(resp.text, 'Raw transcription text string');
    });

    test('EmbeddingsService createVector returns empty list when response data is empty or embedding is null', () async {
      final mock = MockClient((request) async {
        return http.Response(
          jsonEncode({
            'object': 'list',
            'model': 'emb',
            'data': <dynamic>[],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      });

      final client = OmlxClient(baseUrl: 'http://localhost:8000', client: mock);
      final vec = await client.embeddings.createVector(model: 'emb', text: 'test');
      expect(vec, isEmpty);
    });

    test('ModelsService status handles map and non-Map responses, and unload fallback', () async {
      // 1. status with map { "model-a": { ... } }
      var mock = MockClient((request) async {
        if (request.url.path == '/v1/models/status') {
          return http.Response(
            jsonEncode({
              'model-a': {'loaded': true, 'engine_type': 'mlx'},
              'model-b': {'loaded': false},
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        } else if (request.url.path.contains('/unload')) {
          return http.Response(jsonEncode('ok'), 200);
        }
        return http.Response('{}', 200);
      });

      var client = OmlxClient(baseUrl: 'http://localhost:8000', client: mock);
      var statuses = await client.models.status();
      expect(statuses.length, 2);
      expect(statuses.any((s) => s.modelId == 'model-a' && s.isLoaded), isTrue);

      final unloadRes = await client.models.unload('model-a');
      expect(unloadRes.success, isTrue);

      // 2. status with non-Map response
      mock = MockClient((request) async => http.Response(jsonEncode([]), 200));
      client = OmlxClient(baseUrl: 'http://localhost:8000', client: mock);
      statuses = await client.models.status();
      expect(statuses, isEmpty);
    });
  });
}
