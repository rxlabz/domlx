import 'package:http/http.dart' as http;
import '../models/chat.dart';
import '../models/embeddings.dart';
import '../models/health.dart';
import '../models/models.dart';
import '../models/rerank.dart';
import '../models/responses_api.dart';
import '../services/audio_service.dart';
import '../services/chat_service.dart';
import '../services/embeddings_service.dart';
import '../services/models_service.dart';
import '../services/rerank_service.dart';
import '../services/responses_service.dart';
import 'http_client.dart';

/// The primary client interface for communicating with an oMLX server.
///
/// Example:
/// ```dart
/// final client = OmlxClient(baseUrl: 'http://localhost:8000');
///
/// // 1. Health check
/// final health = await client.health();
/// print('oMLX status: ${health.status}');
///
/// // 2. Chat completion
/// final response = await client.chat.create(
///   ChatCompletionRequest(
///     model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
///     messages: [ChatMessage.user('Hello!')],
///   ),
/// );
/// print(response.firstText);
///
/// // 3. Don't forget to close when finished
/// client.close();
/// ```
class OmlxClient {
  final OmlxHttpClient _httpClient;

  /// Chat completion service (`/v1/chat/completions`).
  final ChatService chat;

  /// Models management service (`/v1/models`, `/v1/models/status`, `/v1/models/{id}/unload`).
  final ModelsService models;

  /// Text embeddings service (`/v1/embeddings`).
  final EmbeddingsService embeddings;

  /// Semantic document reranking service (`/v1/rerank`).
  final RerankService rerank;

  /// OpenAI Responses API service (`/v1/responses`, Codex compatibility).
  final ResponsesService responses;

  /// Audio transcription and speech synthesis service (`/v1/audio/*`).
  final AudioService audio;

  OmlxClient._(this._httpClient)
      : chat = ChatService(_httpClient),
        models = ModelsService(_httpClient),
        embeddings = EmbeddingsService(_httpClient),
        rerank = RerankService(_httpClient),
        responses = ResponsesService(_httpClient),
        audio = AudioService(_httpClient);

  /// Creates a new `OmlxClient`.
  ///
  /// - [baseUrl]: Base URL of the oMLX server (default: `http://localhost:8000`).
  /// - [apiKey]: Optional Bearer API key if the server was started with `--api-key`.
  /// - [client]: Optional custom `http.Client` (useful for testing or custom connection pooling).
  /// - [timeout]: Request timeout (default: 120 seconds).
  /// - [defaultHeaders]: Custom headers to attach to every outgoing request.
  factory OmlxClient({
    String baseUrl = 'http://localhost:8000',
    String? apiKey,
    http.Client? client,
    Duration timeout = const Duration(seconds: 120),
    Map<String, String> defaultHeaders = const {},
  }) {
    final httpClient = OmlxHttpClient(
      baseUrl: Uri.parse(baseUrl),
      apiKey: apiKey,
      client: client,
      timeout: timeout,
      defaultHeaders: defaultHeaders,
    );
    return OmlxClient._(httpClient);
  }

  /// Base URL of the oMLX instance.
  Uri get baseUrl => _httpClient.baseUrl;

  /// Checks the health and engine pool status of the oMLX server (`GET /health`).
  /// Does not require authentication.
  Future<HealthResponse> health() async {
    final json = await _httpClient.get('/health');
    return HealthResponse.fromJson(json as Map<String, dynamic>);
  }

  // --- Convenient Shortcuts ---

  /// Convenience shortcut for `chat.create(...)`.
  Future<ChatCompletion> createChatCompletion(ChatCompletionRequest request) =>
      chat.create(request);

  /// Convenience shortcut for `chat.createStream(...)`.
  Stream<ChatCompletionChunk> createStreamChatCompletion(
          ChatCompletionRequest request) =>
      chat.createStream(request);

  /// Convenience shortcut for `chat.generateText(...)`.
  Future<String> generateText({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) =>
      chat.generateText(
        model: model,
        prompt: prompt,
        systemPrompt: systemPrompt,
        temperature: temperature,
        maxTokens: maxTokens,
      );

  /// Convenience shortcut for `chat.streamText(...)`.
  Stream<String> streamText({
    required String model,
    required String prompt,
    String? systemPrompt,
    double? temperature,
    int? maxTokens,
  }) =>
      chat.streamText(
        model: model,
        prompt: prompt,
        systemPrompt: systemPrompt,
        temperature: temperature,
        maxTokens: maxTokens,
      );

  /// Convenience shortcut for `models.list()`.
  Future<ModelsResponse> listModels() => models.list();

  /// Convenience shortcut for `embeddings.create(...)`.
  Future<EmbeddingResponse> createEmbedding(EmbeddingRequest request) =>
      embeddings.create(request);

  /// Convenience shortcut for `rerank.create(...)`.
  Future<RerankResponse> createRerank(RerankRequest request) =>
      rerank.create(request);

  /// Convenience shortcut for `responses.create(...)` (OpenAI Responses API).
  Future<ResponsesResponse> createResponse(ResponsesRequest request) =>
      responses.create(request);

  /// Closes the client and any open resources.
  void close() {
    _httpClient.close();
  }
}
