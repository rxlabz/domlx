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

  /// Creates a streaming text completion emitting partial SSE chunk maps.
  Stream<Map<String, dynamic>> createStream(CompletionRequest request) {
    final payload = request.copyWith(stream: true).toJson();
    return _client.postStream('/v1/completions', body: payload);
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
