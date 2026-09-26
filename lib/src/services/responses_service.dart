import '../client/http_client.dart';
import '../models/responses_api.dart';

/// Service for OpenAI Responses API (`/v1/responses`, Codex compatibility).
class ResponsesService {
  final OmlxHttpClient _client;

  const ResponsesService(this._client);

  /// Creates a response object via the Responses API.
  Future<ResponsesResponse> create(ResponsesRequest request) async {
    final json = await _client.post('/v1/responses', body: request.toJson());
    return ResponsesResponse.fromJson(json as Map<String, dynamic>);
  }
}
