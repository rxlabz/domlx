import '../client/http_client.dart';
import '../models/embeddings.dart';

/// Service for text embeddings (`/v1/embeddings`).
class EmbeddingsService {
  final OmlxHttpClient _client;

  /// Creates an [EmbeddingsService] instance.
  const EmbeddingsService(this._client);

  /// Generates embeddings for input string(s).
  Future<EmbeddingResponse> create(EmbeddingRequest request) async {
    final json = await _client.post('/v1/embeddings', body: request.toJson());
    return EmbeddingResponse.fromJson(json as Map<String, dynamic>);
  }

  /// Convenience method to generate an embedding vector for a single text.
  Future<List<double>> createVector({
    required String model,
    required String text,
    int? dimensions,
  }) async {
    final response = await create(
      EmbeddingRequest(
        model: model,
        input: text,
        encodingFormat: 'float',
        dimensions: dimensions,
      ),
    );

    if (response.data.isEmpty || response.data.first.embedding == null) {
      return const [];
    }

    return response.data.first.embedding!;
  }
}
