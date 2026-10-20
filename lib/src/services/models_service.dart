import '../client/http_client.dart';
import '../models/models.dart';

/// Service for discovering, inspecting, and unloading models.
class ModelsService {
  final OmlxHttpClient _client;

  const ModelsService(this._client);

  /// Lists all discovered models (`GET /v1/models`).
  Future<ModelsResponse> list() async {
    final json = await _client.get('/v1/models');
    return ModelsResponse.fromJson(json as Map<String, dynamic>);
  }

  /// Gets detailed engine status for models (`GET /v1/models/status`).
  Future<List<ModelStatus>> status() async {
    final json = await _client.get('/v1/models/status');
    if (json is Map<String, dynamic>) {
      // In oMLX, models/status may return a map { "model_id": { ...status } }
      // or { "models": [ ... ] } or { "data": [ ... ] }
      final listCandidates = json['data'] ?? json['models'];
      if (listCandidates is List) {
        return listCandidates.map((item) {
          final m = item as Map<String, dynamic>;
          final id = m['id'] as String? ?? m['model_id'] as String? ?? 'unknown';
          return ModelStatus.fromEntry(id, m);
        }).toList();
      }

      final results = <ModelStatus>[];
      for (final entry in json.entries) {
        if (entry.value is Map<String, dynamic>) {
          results.add(ModelStatus.fromEntry(entry.key, entry.value as Map<String, dynamic>));
        }
      }
      return results;
    }
    return const [];
  }

  /// Manually unloads/evicts a model from memory (`POST /v1/models/{model_id}/unload`).
  Future<UnloadModelResponse> unload(String modelId) async {
    final json = await _client.post('/v1/models/$modelId/unload');
    return UnloadModelResponse.fromResponse(
      modelId,
      json is Map<String, dynamic> ? json : {'status': 'ok'},
    );
  }
}
