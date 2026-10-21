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
      expect(json['content'], isA<List<dynamic>>());
      final list = json['content'] as List<dynamic>;
      expect(list.length, 2);
      expect(list[0]['type'], 'text');
      expect(list[1]['type'], 'image_url');
      expect(list[1]['image_url']['url'], 'https://example.com/photo.jpg');
      expect(list[1]['image_url']['detail'], 'high');

      final parsed = ChatMessage.fromJson(json);
      expect(parsed.textContent, 'What is in this image?');
      expect(parsed.content, isA<List<dynamic>>());

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
      expect(json['tool_calls'], isA<List<dynamic>>());
      expect((json['tool_calls'] as List<dynamic>)[0]['id'], 'call_123');

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
      expect(json['input'], isA<List<dynamic>>());
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

  group('Additional Model Serialization & Edge Cases', () {
    test('ChatReasoningEvent and ChatContentEvent toString', () {
      const re = ChatReasoningEvent('thinking...');
      expect(re.toString(), 'ChatReasoningEvent(thinking...)');

      const ce = ChatContentEvent('hello');
      expect(ce.toString(), 'ChatContentEvent(hello)');
    });

    test('ImageContentPart fromJson with string url vs Map', () {
      final partFromString = ImageContentPart.fromJson({'image_url': 'http://image.png'});
      expect(partFromString.url, 'http://image.png');
      expect(partFromString.detail, isNull);

      final partFromMap = ImageContentPart.fromJson({
        'image_url': {'url': 'http://image.png', 'detail': 'low'}
      });
      expect(partFromMap.url, 'http://image.png');
      expect(partFromMap.detail, 'low');
    });

    test('Tool.function factory and fromJson', () {
      final tool = Tool.function(
        name: 'test_func',
        description: 'desc',
        parameters: {'type': 'object'},
      );
      expect(tool.type, 'function');
      expect(tool.function.name, 'test_func');
      expect(tool.function.description, 'desc');

      final toolFromJson = Tool.fromJson({
        'type': 'function',
        'function': {'name': 'fn'},
      });
      expect(toolFromJson.function.name, 'fn');
    });

    test('ChatMessage textContent with null, Map content, and non-list content', () {
      const msgNull = ChatMessage(role: 'user', content: null);
      expect(msgNull.textContent, '');

      final msgMaps = ChatMessage(
        role: 'user',
        content: [
          {'type': 'text', 'text': 'Part A '},
          {'type': 'other'},
        ],
      );
      expect(msgMaps.textContent, 'Part A ');

      const msgInt = ChatMessage(role: 'user', content: 12345);
      expect(msgInt.textContent, '12345');
    });

    test('ChatMessage JSON roundtrip with plain objects and empty tool_calls', () {
      final msg = ChatMessage(
        role: 'user',
        content: ['raw string part'],
      );
      final json = msg.toJson();
      expect(json['content'], ['raw string part']);

      final parsed = ChatMessage.fromJson({
        'role': 'user',
        'content': 'hi',
        'tool_calls': null,
      });
      expect(parsed.toolCalls, isNull);
    });

    test('ResponseFormat predefined constants and fromJson', () {
      expect(ResponseFormat.text.type, 'text');
      expect(ResponseFormat.jsonObject.type, 'json_object');

      final schemaWithDesc = ResponseFormat.jsonSchema(
        name: 'desc_schema',
        schema: {'type': 'object'},
        description: 'a schema with description',
      );
      expect(schemaWithDesc.jsonSchema?['description'], 'a schema with description');

      final parsed = ResponseFormat.fromJson({
        'type': 'json_schema',
        'json_schema': {'name': 'schema_a'},
      });
      expect(parsed.type, 'json_schema');
      expect(parsed.jsonSchema?['name'], 'schema_a');
    });

    test('ChatCompletion and ChatCompletionChunk getters with empty choices', () {
      const completion = ChatCompletion(
        id: '1',
        created: 123,
        model: 'm',
        choices: [],
      );
      expect(completion.firstMessage, isNull);
      expect(completion.firstText, '');
      expect(completion.firstReasoningContent, isNull);

      const chunk = ChatCompletionChunk(
        id: '1',
        created: 123,
        model: 'm',
        choices: [],
      );
      expect(chunk.firstDelta, isNull);
      expect(chunk.firstContent, isNull);
      expect(chunk.firstReasoningContent, isNull);
    });

    test('ChatCompletionRequest full serialization with all optional parameters', () {
      final req = ChatCompletionRequest(
        model: 'qwen',
        messages: [ChatMessage.user('hi')],
        temperature: 0.8,
        topP: 0.9,
        topK: 40,
        repetitionPenalty: 1.1,
        maxTokens: 100,
        stream: true,
        tools: [Tool.function(name: 'calc')],
        toolChoice: 'auto',
        responseFormat: ResponseFormat.jsonObject,
        stop: ['STOP'],
        user: 'user-42',
      );

      final json = req.toJson();
      expect(json['temperature'], 0.8);
      expect(json['top_p'], 0.9);
      expect(json['top_k'], 40);
      expect(json['repetition_penalty'], 1.1);
      expect(json['max_tokens'], 100);
      expect(json['stream'], isTrue);
      expect(json['tools'], isNotEmpty);
      expect(json['tool_choice'], 'auto');
      expect(json['response_format']['type'], 'json_object');
      expect(json['stop'], ['STOP']);
      expect(json['user'], 'user-42');
    });

    test('CompletionRequest full serialization and TextCompletion empty choices', () {
      const req = CompletionRequest(
        model: 'davinci',
        prompt: 'prompt',
        temperature: 0.5,
        topP: 0.95,
        maxTokens: 50,
        n: 2,
        stream: false,
        stop: 'END',
        suffix: 'suffix',
        echo: true,
        user: 'user-1',
      );
      final json = req.toJson();
      expect(json['temperature'], 0.5);
      expect(json['top_p'], 0.95);
      expect(json['max_tokens'], 50);
      expect(json['n'], 2);
      expect(json['stream'], isFalse);
      expect(json['stop'], 'END');
      expect(json['suffix'], 'suffix');
      expect(json['echo'], isTrue);
      expect(json['user'], 'user-1');

      const textCompletion = TextCompletion(
        id: 'c1',
        created: 1,
        model: 'm',
        choices: [],
      );
      expect(textCompletion.firstText, '');
    });

    test('EmbeddingItem base64 reading and EmbeddingRequest.fromJson', () {
      // 1. embedding as base64 string
      final itemBase64 = EmbeddingItem.fromJson({
        'index': 0,
        'embedding': 'SGVsbG8=',
      });
      expect(itemBase64.embedding, isNull);
      expect(itemBase64.base64Embedding, 'SGVsbG8=');

      // 2. base64_embedding key
      final itemBase64Key = EmbeddingItem.fromJson({
        'index': 0,
        'base64_embedding': 'V29ybGQ=',
      });
      expect(itemBase64Key.base64Embedding, 'V29ybGQ=');

      // 3. EmbeddingRequest fromJson
      final req = EmbeddingRequest.fromJson({
        'model': 'emb',
        'input': 'text',
        'encoding_format': 'base64',
        'dimensions': 256,
        'user': 'u1',
      });
      expect(req.model, 'emb');
      expect(req.dimensions, 256);
      expect(req.encodingFormat, 'base64');
    });

    test('ModelStatus and UnloadModelResponse fallback parsing', () {
      final status = ModelStatus.fromEntry('m1', {
        'is_loaded': true,
      });
      expect(status.isLoaded, isTrue);

      final unloadOk = UnloadModelResponse.fromResponse('m1', {'status': 'ok'});
      expect(unloadOk.success, isTrue);

      final unloadDetail = UnloadModelResponse.fromResponse('m1', {
        'status': 'error',
        'detail': 'Failed to evict',
      });
      expect(unloadDetail.success, isFalse);
      expect(unloadDetail.message, 'Failed to evict');
    });

    test('Rerank _readDocument fallback for non-string document types', () {
      // document map without text key
      final r1 = RerankResult.fromJson({
        'index': 0,
        'relevance_score': 0.5,
        'document': {'id': 123},
      });
      expect(r1.document, '{"id":123}');

      // document primitive integer
      final r2 = RerankResult.fromJson({
        'index': 1,
        'relevance_score': 0.1,
        'document': 42,
      });
      expect(r2.document, '42');
    });

    test('Responses API InputItem and ResponsesRequest serialization edge cases', () {
      final devItem = InputItem.developer('Be helpful');
      expect(devItem.role, 'developer');
      expect(devItem.content, 'Be helpful');

      final userItem = InputItem.user('User text');
      expect(userItem.role, 'user');
      expect(userItem.content, 'User text');

      final parsedUserItem = InputItem.fromJson({
        'role': 'user',
        'content': 'hello json',
        'type': 'message',
      });
      expect(parsedUserItem.role, 'user');
      expect(parsedUserItem.content, 'hello json');
      expect(parsedUserItem.type, 'message');

      final itemWithType = const InputItem(
        role: 'user',
        content: 'Hi',
        type: 'custom_type',
        extra: {'k': 'v'},
      );
      final itemJson = itemWithType.toJson();
      expect(itemJson['type'], 'custom_type');
      expect(itemJson['k'], 'v');

      final req = ResponsesRequest(
        model: 'm',
        input: [itemWithType, 'raw string input'],
        instructions: 'Sys',
        previousResponseId: 'resp-prev',
        store: false,
        tools: [Tool.function(name: 't1')],
        extra: {'custom': 1},
      );
      final reqJson = req.toJson();
      expect(reqJson['instructions'], 'Sys');
      expect(reqJson['previous_response_id'], 'resp-prev');
      expect(reqJson['store'], isFalse);
      expect(reqJson['tools'], isNotEmpty);
      expect(reqJson['custom'], 1);

      final parsedReq = ResponsesRequest.fromJson(reqJson);
      expect(parsedReq.instructions, 'Sys');
      expect(parsedReq.previousResponseId, 'resp-prev');
    });
  });
}
