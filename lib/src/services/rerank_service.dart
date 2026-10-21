import '../client/http_client.dart';
import '../models/rerank.dart';

/// Service for document reranking (`/v1/rerank`).
class RerankService {
  final OmlxHttpClient _client;

  /// Creates a [RerankService] instance.
  const RerankService(this._client);

  /// Reranks documents based on semantic relevance to a query.
  Future<RerankResponse> create(RerankRequest request) async {
    final json = await _client.post('/v1/rerank', body: request.toJson());
    return RerankResponse.fromJson(json as Map<String, dynamic>);
  }

  /// Convenience method to rerank documents directly.
  Future<List<RerankResult>> rank({
    required String model,
    required String query,
    required List<String> documents,
    int? topN,
    bool returnDocuments = true,
  }) async {
    final response = await create(
      RerankRequest(
        model: model,
        query: query,
        documents: documents,
        topN: topN,
        returnDocuments: returnDocuments,
      ),
    );

    return response.results;
  }
}
