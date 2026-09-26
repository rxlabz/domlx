/// Metadata for a single model discovered by oMLX.
class ModelInfo {
  final String id;
  final String object;
  final int? created;
  final String? ownedBy;
  final Map<String, dynamic> extra;

  const ModelInfo({
    required this.id,
    this.object = 'model',
    this.created,
    this.ownedBy,
    this.extra = const {},
  });

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    final copy = Map<String, dynamic>.from(json);
    final id = copy.remove('id') as String? ?? '';
    final object = copy.remove('object') as String? ?? 'model';
    final created = (copy.remove('created') as num?)?.toInt();
    final ownedBy = copy.remove('owned_by') as String?;

    return ModelInfo(
      id: id,
      object: object,
      created: created,
      ownedBy: ownedBy,
      extra: copy,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'object': object,
        if (created != null) 'created': created,
        if (ownedBy != null) 'owned_by': ownedBy,
        ...extra,
      };

  @override
  String toString() => 'ModelInfo(id: $id, ownedBy: $ownedBy)';
}

/// Response returned by `GET /v1/models`.
class ModelsResponse {
  final String object;
  final List<ModelInfo> data;

  const ModelsResponse({
    this.object = 'list',
    required this.data,
  });

  factory ModelsResponse.fromJson(Map<String, dynamic> json) {
    final list = json['data'] as List<dynamic>? ?? [];
    return ModelsResponse(
      object: json['object'] as String? ?? 'list',
      data: list
          .whereType<Map<String, dynamic>>()
          .map((e) => ModelInfo.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'object': object,
        'data': data.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => 'ModelsResponse(count: ${data.length})';
}

/// Detailed status information for loaded models from `GET /v1/models/status`.
class ModelStatus {
  final String modelId;
  final bool isLoaded;
  final String? engineType;
  final Map<String, dynamic> details;

  const ModelStatus({
    required this.modelId,
    required this.isLoaded,
    this.engineType,
    this.details = const {},
  });

  factory ModelStatus.fromJson(String modelId, Map<String, dynamic> json) {
    return ModelStatus(
      modelId: modelId,
      isLoaded: json['loaded'] as bool? ?? json['is_loaded'] as bool? ?? false,
      engineType: json['engine_type'] as String?,
      details: json,
    );
  }

  Map<String, dynamic> toJson() => {
        'model_id': modelId,
        'loaded': isLoaded,
        if (engineType != null) 'engine_type': engineType,
        ...details,
      };

  @override
  String toString() => 'ModelStatus(modelId: $modelId, isLoaded: $isLoaded)';
}

/// Response from unloading a model `POST /v1/models/{model_id}/unload`.
class UnloadModelResponse {
  final bool success;
  final String modelId;
  final String? message;
  final Map<String, dynamic> raw;

  const UnloadModelResponse({
    required this.success,
    required this.modelId,
    this.message,
    this.raw = const {},
  });

  factory UnloadModelResponse.fromJson(String modelId, Map<String, dynamic> json) {
    return UnloadModelResponse(
      success: json['success'] as bool? ?? (json['status'] == 'ok' || json['status'] == 'unloaded'),
      modelId: modelId,
      message: json['message'] as String? ?? json['detail'] as String?,
      raw: json,
    );
  }

  Map<String, dynamic> toJson() => raw;

  @override
  String toString() => 'UnloadModelResponse(modelId: $modelId, success: $success)';
}
