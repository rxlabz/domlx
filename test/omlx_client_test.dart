import 'dart:convert';
import 'package:domlx/domlx.dart';
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

    test('POST /v1/models/{id}/unload unloads model', () async {
      final mock = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/v1/models/test-model/unload');

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

      final res = await client.models.unload('test-model');
      expect(res.success, isTrue);
      expect(res.modelId, 'test-model');
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
  });
}
