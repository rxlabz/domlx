import '../client/http_client.dart';
import '../models/responses_api.dart';

/// Service for OpenAI Responses API (`/v1/responses`, Codex compatibility).
class ResponsesService {
  final OmlxHttpClient _client;

  const ResponsesService(this._client);

  /// Creates a response object via the Responses API.
  Future<ResponsesResponse> create(ResponsesRequest request) async {
    final payload = request.copyWith(extra: {...request.extra, 'stream': false}).toJson();
    final json = await _client.post('/v1/responses', body: payload);
    return ResponsesResponse.fromJson(json as Map<String, dynamic>);
  }

  /// Creates a streaming response emitting partial SSE chunk maps.
  Stream<Map<String, dynamic>> createStream(ResponsesRequest request) {
    final payload = request.copyWith(extra: {...request.extra, 'stream': true}).toJson();
    return _client.postStream('/v1/responses', body: payload);
  }
}
