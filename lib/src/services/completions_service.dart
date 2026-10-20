import '../client/http_client.dart';
import '../models/completions.dart';

/// Service for legacy text completions (`/v1/completions`).
class CompletionsService {
  final OmlxHttpClient _client;

  const CompletionsService(this._client);

  /// Creates a non-streaming text completion.
  Future<TextCompletion> create(CompletionRequest request) async {
    final payload = request.copyWith(stream: false).toJson();
    final json = await _client.post('/v1/completions', body: payload);
    return TextCompletion.fromJson(json as Map<String, dynamic>);
  }

  /// Creates a streaming text completion emitting strongly-typed chunks.
  Stream<TextCompletion> createStream(CompletionRequest request) async* {
    final payload = request.copyWith(stream: true).toJson();
    final stream = _client.postStream('/v1/completions', body: payload);
    await for (final json in stream) {
      yield TextCompletion.fromJson(json);
    }
  }

  /// Convenience method to stream text tokens directly.
  Stream<String> streamText({
    required String model,
    required String prompt,
    double? temperature,
    int? maxTokens,
  }) async* {
    final chunkStream = createStream(
      CompletionRequest(
        model: model,
        prompt: prompt,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );

    await for (final chunk in chunkStream) {
      final token = chunk.firstText;
      if (token.isNotEmpty) {
        yield token;
      }
    }
  }

  /// Convenience method to generate simple text completion.
  Future<String> generate({
    required String model,
    required String prompt,
    double? temperature,
    int? maxTokens,
  }) async {
    final response = await create(
      CompletionRequest(
        model: model,
        prompt: prompt,
        temperature: temperature,
        maxTokens: maxTokens,
      ),
    );
    return response.firstText;
  }
}
