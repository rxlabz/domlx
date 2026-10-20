import '../client/http_client.dart';
import '../models/chat.dart';

/// Service for chat completions (`/v1/chat/completions`).
class ChatService {
  final OmlxHttpClient _client;

  const ChatService(this._client);

  /// Creates a non-streaming chat completion.
  Future<ChatCompletion> create(ChatCompletionRequest request) async {
    final payload = request.copyWith(stream: false).toJson();
    final json = await _client.post('/v1/chat/completions', body: payload);
    return ChatCompletion.fromJson(json as Map<String, dynamic>);
  }

  /// Creates a streaming chat completion emitting partial deltas.
  Stream<ChatCompletionChunk> createStream(ChatCompletionRequest request) async* {
    final payload = request.copyWith(stream: true).toJson();
    final stream = _client.postStream('/v1/chat/completions', body: payload);

    await for (final json in stream) {
      yield ChatCompletionChunk.fromJson(json);
    }
  }

  /// Convenience method to generate a simple text response.
  Future<String> generateText({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) async {
    final messages = <ChatMessage>[
      if (systemPrompt != null) ChatMessage.system(systemPrompt),
      ChatMessage.user(prompt),
    ];

    final response = await create(
      ChatCompletionRequest(
        model: model,
        messages: messages,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );

    return response.firstText;
  }

  /// Convenience method to stream text tokens directly.
  Stream<String> streamText({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) async* {
    final messages = <ChatMessage>[
      if (systemPrompt != null) ChatMessage.system(systemPrompt),
      ChatMessage.user(prompt),
    ];

    final chunkStream = createStream(
      ChatCompletionRequest(
        model: model,
        messages: messages,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );

    await for (final chunk in chunkStream) {
      final token = chunk.firstContent;
      if (token != null && token.isNotEmpty) {
        yield token;
      }
    }
  }

  /// Convenience method to stream reasoning tokens directly from thinking models.
  Stream<String> streamReasoning({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) async* {
    final messages = <ChatMessage>[
      if (systemPrompt != null) ChatMessage.system(systemPrompt),
      ChatMessage.user(prompt),
    ];

    final chunkStream = createStream(
      ChatCompletionRequest(
        model: model,
        messages: messages,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );

    await for (final chunk in chunkStream) {
      final reasoning = chunk.firstReasoningContent;
      if (reasoning != null && reasoning.isNotEmpty) {
        yield reasoning;
      }
    }
  }

  /// Convenience method to stream both reasoning thoughts and content as structured events.
  Stream<ChatStreamEvent> streamEvents({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) async* {
    final messages = <ChatMessage>[
      if (systemPrompt != null) ChatMessage.system(systemPrompt),
      ChatMessage.user(prompt),
    ];

    final chunkStream = createStream(
      ChatCompletionRequest(
        model: model,
        messages: messages,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );

    await for (final chunk in chunkStream) {
      final reasoning = chunk.firstReasoningContent;
      if (reasoning != null && reasoning.isNotEmpty) {
        yield ChatReasoningEvent(reasoning);
      }
      final content = chunk.firstContent;
      if (content != null && content.isNotEmpty) {
        yield ChatContentEvent(content);
      }
    }
  }
}
