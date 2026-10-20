import 'package:domlx/domlx.dart';
import 'package:test/test.dart';

void main() {
  group('ChatRole Enum & Type-Safe Roles', () {
    test('converts strings to ChatRole and vice versa', () {
      expect(ChatRole.system.value, 'system');
      expect(ChatRole.user.value, 'user');
      expect(ChatRole.assistant.value, 'assistant');
      expect(ChatRole.tool.value, 'tool');
      expect(ChatRole.developer.value, 'developer');

      expect(ChatRole.fromString('system'), ChatRole.system);
      expect(ChatRole.fromString('USER'), ChatRole.user);
      expect(ChatRole.fromString('ASSISTANT'), ChatRole.assistant);
      expect(ChatRole.fromString('tool'), ChatRole.tool);
      expect(ChatRole.fromString('developer'), ChatRole.developer);
      expect(ChatRole.fromString('unknown_role'), ChatRole.user);
    });

    test('ChatMessage exposes chatRole property correctly', () {
      final sysMsg = ChatMessage.system('You are an assistant.');
      expect(sysMsg.chatRole, ChatRole.system);

      final userMsg = ChatMessage.user('Hello');
      expect(userMsg.chatRole, ChatRole.user);

      final assistMsg = ChatMessage.assistant('World');
      expect(assistMsg.chatRole, ChatRole.assistant);

      final toolMsg = ChatMessage.tool(toolCallId: '123', content: 'Result');
      expect(toolMsg.chatRole, ChatRole.tool);

      final devMsg = ChatMessage.developer('Rules');
      expect(devMsg.chatRole, ChatRole.developer);
    });
  });

  group('Freezed Value Equality & HashCode', () {
    test('ChatMessage value equality and hashCode', () {
      final msg1 = ChatMessage(
        role: 'user',
        content: 'Hi',
        reasoningContent: null,
      );
      final msg2 = ChatMessage(
        role: 'user',
        content: 'Hi',
        reasoningContent: null,
      );
      final msg3 = ChatMessage(
        role: 'user',
        content: 'Different',
      );

      expect(msg1, equals(msg2));
      expect(msg1.hashCode, equals(msg2.hashCode));
      expect(msg1, isNot(equals(msg3)));
    });

    test('AudioSpeechRequest value equality and copyWith', () {
      const req1 = AudioSpeechRequest(
        model: 'tts-1',
        input: 'Hello world',
        voice: 'alloy',
        responseFormat: 'mp3',
        speed: 1.0,
      );
      const req2 = AudioSpeechRequest(
        model: 'tts-1',
        input: 'Hello world',
        voice: 'alloy',
        responseFormat: 'mp3',
        speed: 1.0,
      );

      expect(req1, equals(req2));
      expect(req1.hashCode, equals(req2.hashCode));

      final modified = req1.copyWith(voice: 'echo', speed: 1.2);
      expect(modified.model, 'tts-1');
      expect(modified.input, 'Hello world');
      expect(modified.voice, 'echo');
      expect(modified.speed, 1.2);
      expect(modified, isNot(equals(req1)));
    });

    test('AudioTranscriptionRequest value equality and copyWith', () {
      final req1 = AudioTranscriptionRequest(
        fileBytes: [1, 2, 3, 4],
        filename: 'audio.wav',
        model: 'whisper-large-v3',
        language: 'en',
      );
      final req2 = AudioTranscriptionRequest(
        fileBytes: [1, 2, 3, 4],
        filename: 'audio.wav',
        model: 'whisper-large-v3',
        language: 'en',
      );

      expect(req1, equals(req2));
      expect(req1.hashCode, equals(req2.hashCode));

      final copied = req1.copyWith(language: 'fr', temperature: 0.5);
      expect(copied.language, 'fr');
      expect(copied.temperature, 0.5);
      expect(copied.model, 'whisper-large-v3');
      expect(copied.filename, 'audio.wav');
      expect(copied, isNot(equals(req1)));
    });

    test('EmbeddingRequest and RerankRequest copyWith and equality', () {
      const emb1 = EmbeddingRequest(
        model: 'bge-m3',
        input: 'Hello test',
        dimensions: 512,
      );
      const emb2 = EmbeddingRequest(
        model: 'bge-m3',
        input: 'Hello test',
        dimensions: 512,
      );

      expect(emb1, equals(emb2));
      expect(emb1.hashCode, equals(emb2.hashCode));

      final embCopied = emb1.copyWith(dimensions: 1024);
      expect(embCopied.dimensions, 1024);
      expect(embCopied.model, 'bge-m3');
      expect(embCopied, isNot(equals(emb1)));

      const rerank1 = RerankRequest(
        model: 'rerank-v1',
        query: 'search query',
        documents: ['doc1', 'doc2'],
        topN: 3,
      );
      final rerankCopied = rerank1.copyWith(topN: 5);
      expect(rerankCopied.topN, 5);
      expect(rerankCopied.query, 'search query');
      expect(rerankCopied.documents, ['doc1', 'doc2']);
    });

    test('HealthResponse and ModelInfo value equality and copyWith', () {
      const health1 = HealthResponse(
        status: 'ok',
        version: '0.4.0',
        defaultModel: 'Qwen2.5',
      );
      const health2 = HealthResponse(
        status: 'ok',
        version: '0.4.0',
        defaultModel: 'Qwen2.5',
      );

      expect(health1, equals(health2));
      expect(health1.isHealthy, isTrue);

      final healthUpdated = health1.copyWith(status: 'error');
      expect(healthUpdated.isHealthy, isFalse);
      expect(healthUpdated.version, '0.4.0');

      const model1 = ModelInfo(id: 'model-a', object: 'model');
      final model2 = model1.copyWith(ownedBy: 'organization');
      expect(model2.id, 'model-a');
      expect(model2.ownedBy, 'organization');

      final modelWithCustomProps = ModelInfo.fromJson({
        'id': 'model-custom',
        'object': 'model',
        'owned_by': 'mlx',
        'context_length': 32768,
        'architecture': 'qwen2',
      });
      expect(modelWithCustomProps.id, 'model-custom');
      expect(modelWithCustomProps.raw['context_length'], 32768);
      expect(modelWithCustomProps.raw['architecture'], 'qwen2');

      final serializedModel = modelWithCustomProps.toJson();
      expect(serializedModel.containsKey('raw'), isFalse);
      expect(serializedModel['id'], 'model-custom');

      final serializedHealth = health1.toJson();
      expect(serializedHealth.containsKey('raw'), isFalse);
      expect(serializedHealth['status'], 'ok');
    });

    test('Usage value equality and copyWith', () {
      const u1 = Usage(
        promptTokens: 10,
        completionTokens: 20,
        totalTokens: 30,
      );
      const u2 = Usage(
        promptTokens: 10,
        completionTokens: 20,
        totalTokens: 30,
      );

      expect(u1, equals(u2));
      expect(u1.hashCode, equals(u2.hashCode));

      final u3 = u1.copyWith(cachedTokens: 5);
      expect(u3.cachedTokens, 5);
      expect(u3.promptTokens, 10);
      expect(u3, isNot(equals(u1)));

      // Usage reading cached_tokens from prompt_tokens_details map
      final uDetailsMap = Usage.fromJson({
        'prompt_tokens': 10,
        'prompt_tokens_details': {'cached_tokens': 7},
      });
      expect(uDetailsMap.cachedTokens, 7);
    });

    test('AudioSpeechRequest, ModelStatus, and UnloadModelResponse direct fromJson constructors', () {
      final speechReq = AudioSpeechRequest.fromJson({
        'model': 'tts-1',
        'input': 'speech text',
        'voice': 'alloy',
        'response_format': 'mp3',
        'speed': 1.0,
      });
      expect(speechReq.model, 'tts-1');
      expect(speechReq.input, 'speech text');

      final modelStatus = ModelStatus.fromJson({
        'model_id': 'status-model',
        'loaded': true,
        'engine_type': 'mlx',
      });
      expect(modelStatus.modelId, 'status-model');
      expect(modelStatus.isLoaded, isTrue);

      final unloadModel = UnloadModelResponse.fromJson({
        'success': true,
        'model_id': 'unloaded-model',
        'message': 'success evict',
      });
      expect(unloadModel.modelId, 'unloaded-model');
      expect(unloadModel.success, isTrue);

      final rerankReq = RerankRequest.fromJson({
        'model': 'rr-model',
        'query': 'query text',
        'documents': ['d1'],
      });
      expect(rerankReq.model, 'rr-model');
    });
  });
}
