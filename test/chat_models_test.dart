import 'dart:convert';
import 'package:domlx/domlx.dart';
import 'package:test/test.dart';

void main() {
  group('ChatMessage & ContentPart', () {
    test('serializes and deserializes text message with reasoning_content', () {
      final msg = ChatMessage(
        role: 'assistant',
        content: '42 is the answer.',
        reasoningContent: 'The user is asking about the meaning of life...',
        partial: false,
      );

      final json = msg.toJson();
      expect(json['role'], 'assistant');
      expect(json['content'], '42 is the answer.');
      expect(json['reasoning_content'],
          'The user is asking about the meaning of life...');
      expect(json['partial'], false);

      final parsed = ChatMessage.fromJson(json);
      expect(parsed.role, 'assistant');
      expect(parsed.content, '42 is the answer.');
      expect(parsed.reasoningContent,
          'The user is asking about the meaning of life...');
      expect(parsed.textContent, '42 is the answer.');
    });

    test('supports multi-modal content parts (text and image)', () {
      final msg = ChatMessage(
        role: 'user',
        content: [
          ContentPart.text('What is in this image?'),
          ContentPart.imageUrl('https://example.com/photo.jpg', detail: 'high'),
        ],
      );

      final json = msg.toJson();
      expect(json['content'], isA<List>());
      final list = json['content'] as List;
      expect(list.length, 2);
      expect(list[0]['type'], 'text');
      expect(list[1]['type'], 'image_url');
      expect(list[1]['image_url']['url'], 'https://example.com/photo.jpg');
      expect(list[1]['image_url']['detail'], 'high');

      final parsed = ChatMessage.fromJson(json);
      expect(parsed.textContent, 'What is in this image?');
      expect(parsed.content, isA<List>());

      final userPartsMsg = ChatMessage.userParts([
        ContentPart.text('Hello typed user parts'),
      ]);
      expect(userPartsMsg.role, 'user');
      expect(userPartsMsg.textContent, 'Hello typed user parts');
    });

    test('supports ToolChoice typed helper constants and functions', () {
      expect(ToolChoice.none, 'none');
      expect(ToolChoice.auto, 'auto');
      expect(ToolChoice.required, 'required');
      expect(
        ToolChoice.function('my_func'),
        {
          'type': 'function',
          'function': {'name': 'my_func'},
        },
      );
    });

    test('supports tool calling in message', () {
      final call = ToolCall(
        id: 'call_123',
        function: FunctionCall(
          name: 'get_weather',
          arguments: '{"location": "Tokyo"}',
        ),
      );

      final msg = ChatMessage.assistant(
        null,
        toolCalls: [call],
      );

      final json = msg.toJson();
      expect(json['tool_calls'], isA<List>());
      expect((json['tool_calls'] as List)[0]['id'], 'call_123');

      final parsed = ChatMessage.fromJson(json);
      expect(parsed.toolCalls?.length, 1);
      expect(parsed.toolCalls?.first.function.name, 'get_weather');
      expect(parsed.toolCalls?.first.function.arguments,
          '{"location": "Tokyo"}');
    });
  });

  group('Usage with oMLX Timing & Cache Extensions', () {
    test('parses cached_tokens and timing durations', () {
      final json = {
        'prompt_tokens': 128,
        'completion_tokens': 32,
        'total_tokens': 160,
        'cached_tokens': 64,
        'prompt_tokens_details': {
          'cached_tokens': 64,
        },
        'prefill_duration': 0.045,
        'generation_duration': 0.12,
      };

      final usage = Usage.fromJson(json);
      expect(usage.promptTokens, 128);
      expect(usage.completionTokens, 32);
      expect(usage.totalTokens, 160);
      expect(usage.cachedTokens, 64);
      expect(usage.promptTokensDetails?.cachedTokens, 64);
      expect(usage.prefillDuration, 0.045);
      expect(usage.generationDuration, 0.12);

      final serialized = usage.toJson();
      expect(serialized['cached_tokens'], 64);
      expect(serialized['prefill_duration'], 0.045);
    });
  });

  group('Structured Output ResponseFormat', () {
    test('serializes json_schema response format', () {
      final format = ResponseFormat.jsonSchema(
        name: 'user_profile',
        schema: {
          'type': 'object',
          'properties': {
            'name': {'type': 'string'},
            'age': {'type': 'integer'},
          },
          'required': ['name', 'age'],
        },
        strict: true,
      );

      final json = format.toJson();
      expect(json['type'], 'json_schema');
      expect(json['json_schema']['name'], 'user_profile');
      expect(json['json_schema']['strict'], true);
    });
  });

  group('Request extra flattening with custom toJson', () {
    test('ChatCompletionRequest flattens extra fields and serializes properly', () {
      final req = ChatCompletionRequest(
        model: 'model-a',
        messages: [ChatMessage.user('hi')],
        extra: {
          'custom_sampler': 'top_k_custom',
          'repetition_context_size': 64,
        },
      );

      final json = req.toJson();
      expect(json['model'], 'model-a');
      expect(json['custom_sampler'], 'top_k_custom');
      expect(json['repetition_context_size'], 64);
      expect(json.containsKey('extra'), isFalse);
    });

    test('CompletionRequest flattens extra fields and serializes properly', () {
      final req = CompletionRequest(
        model: 'model-b',
        prompt: 'test prompt',
        extra: {
          'custom_vendor_param': 123,
        },
      );

      final json = req.toJson();
      expect(json['model'], 'model-b');
      expect(json['prompt'], 'test prompt');
      expect(json['custom_vendor_param'], 123);
      expect(json.containsKey('extra'), isFalse);
    });
  });

  group('Embeddings & Rerank Models', () {
    test('serializes and parses RerankRequest and RerankResponse', () {
      final req = RerankRequest(
        model: 'bge-reranker-large',
        query: 'What is MLX?',
        documents: [
          'MLX is an array framework for Apple Silicon.',
          'Bananas are rich in potassium.',
        ],
        topN: 1,
      );

      expect(req.toJson()['top_n'], 1);

      final responseJson = {
        'model': 'bge-reranker-large',
        'results': [
          {
            'index': 0,
            'relevance_score': 0.985,
            'document': 'MLX is an array framework for Apple Silicon.',
          }
        ],
        'usage': {
          'prompt_tokens': 20,
          'completion_tokens': 0,
          'total_tokens': 20,
        }
      };

      final resp = RerankResponse.fromJson(responseJson);
      expect(resp.model, 'bge-reranker-large');
      expect(resp.results.length, 1);
      expect(resp.results.first.relevanceScore, 0.985);
      expect(resp.results.first.index, 0);
      expect(resp.results.first.document, 'MLX is an array framework for Apple Silicon.');
    });

    test('parses RerankResponse when document is returned as a Map {text: ...}', () {
      final responseJson = {
        'model': 'bge-reranker-large',
        'results': [
          {
            'index': 0,
            'relevance_score': 0.985,
            'document': {
              'text': 'MLX is an array framework for Apple Silicon.',
            },
          },
          {
            'index': 1,
            'relevance_score': 0.123,
            'document': null,
          }
        ],
      };

      final resp = RerankResponse.fromJson(responseJson);
      expect(resp.results.length, 2);
      expect(resp.results[0].document, 'MLX is an array framework for Apple Silicon.');
      expect(resp.results[1].document, isNull);
    });

    test('parses float EmbeddingResponse', () {
      final json = {
        'object': 'list',
        'model': 'bge-micro',
        'data': [
          {
            'index': 0,
            'object': 'embedding',
            'embedding': [0.12, -0.34, 0.56],
          }
        ],
        'usage': {
          'prompt_tokens': 5,
          'completion_tokens': 0,
          'total_tokens': 5,
        }
      };

      final resp = EmbeddingResponse.fromJson(json);
      expect(resp.data.first.embedding, [0.12, -0.34, 0.56]);
      expect(resp.data.first.index, 0);

      final singleReq = EmbeddingRequest.single(
        model: 'bge-micro',
        text: 'Hello single',
      );
      expect(singleReq.input, 'Hello single');

      final batchReq = EmbeddingRequest.batch(
        model: 'bge-micro',
        texts: ['Hello 1', 'Hello 2'],
      );
      expect(batchReq.input, ['Hello 1', 'Hello 2']);
    });
  });

  group('Responses API (Codex compatibility)', () {
    test('serializes ResponsesRequest and parses ResponsesResponse', () {
      final req = ResponsesRequest(
        model: 'mlx-community/Qwen2.5-Coder-7B-Instruct-4bit',
        instructions: 'You are a programming assistant.',
        input: [
          InputItem.user('Write a function in Dart to reverse a string.'),
        ],
        store: true,
        extra: {'custom_flag': true},
      );

      final json = req.toJson();
      expect(json['instructions'], 'You are a programming assistant.');
      expect(json['store'], true);
      expect(json['custom_flag'], true);
      expect(json['input'], isA<List>());
      final encoded = jsonEncode(json);
      expect(encoded, contains('reverse a string'));

      final respJson = {
        'id': 'resp_001',
        'object': 'response',
        'created': 1710000000,
        'model': 'mlx-community/Qwen2.5-Coder-7B-Instruct-4bit',
        'status': 'completed',
        'output': [
          {
            'id': 'out_001',
            'type': 'message',
            'role': 'assistant',
            'content': 'String rev(String s) => s.split("").reversed.join();',
          }
        ],
        'output_text': 'String rev(String s) => s.split("").reversed.join();',
      };

      final resp = ResponsesResponse.fromJson(respJson);
      expect(resp.id, 'resp_001');
      expect(resp.status, 'completed');
      expect(resp.outputText, contains('rev'));

      final outItemWithExtras = ResponseOutputItem.fromJson({
        'id': 'out_002',
        'type': 'function_call',
        'role': 'assistant',
        'content': null,
        'call_id': 'call_abc',
        'function_name': 'execute_command',
      });
      expect(outItemWithExtras.id, 'out_002');
      expect(outItemWithExtras.extra['call_id'], 'call_abc');
      expect(outItemWithExtras.extra['function_name'], 'execute_command');

      final serializedOut = outItemWithExtras.toJson();
      expect(serializedOut['call_id'], 'call_abc');
      expect(serializedOut['function_name'], 'execute_command');
      expect(serializedOut.containsKey('extra'), isFalse);
    });
  });
}
