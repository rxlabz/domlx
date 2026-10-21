import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

Object? _readRaw(Map<dynamic, dynamic> json, String key) => json;

/// Metadata for a single model discovered by oMLX.
@freezed
abstract class ModelInfo with _$ModelInfo {
  /// Creates a [ModelInfo] instance.
  const factory ModelInfo({
    /// Unique model identifier.
    required String id,

    /// Object type, typically 'model'.
    @Default('model') String object,

    /// Unix timestamp when model was registered.
    int? created,

    /// Owner or organization identifier.
    @JsonKey(name: 'owned_by') String? ownedBy,

    /// Raw metadata map from server.
    @JsonKey(readValue: _readRaw, includeToJson: false)
    @Default({})
    Map<String, dynamic> raw,
  }) = _ModelInfo;

  /// Creates a [ModelInfo] from a JSON map.
  factory ModelInfo.fromJson(Map<String, dynamic> json) =>
      _$ModelInfoFromJson(json);
}

/// Response returned by `GET /v1/models`.
@freezed
abstract class ModelsResponse with _$ModelsResponse {
  /// Creates a [ModelsResponse] instance.
  const factory ModelsResponse({
    /// Object type, typically 'list'.
    @Default('list') String object,

    /// Discovered models.
    required List<ModelInfo> data,
  }) = _ModelsResponse;

  /// Creates a [ModelsResponse] from a JSON map.
  factory ModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsResponseFromJson(json);
}

/// Detailed status information for loaded models from `GET /v1/models/status`.
@freezed
abstract class ModelStatus with _$ModelStatus {
  /// Creates a [ModelStatus] instance.
  const factory ModelStatus({
    /// Model ID.
    @JsonKey(name: 'model_id') required String modelId,

    /// Whether the model is currently resident in memory.
    @JsonKey(name: 'loaded') @Default(false) bool isLoaded,

    /// Engine type (e.g. mlx, vllm, llama.cpp).
    @JsonKey(name: 'engine_type') String? engineType,

    /// Additional runtime status details.
    @Default({}) Map<String, dynamic> details,
  }) = _ModelStatus;

  /// Creates a [ModelStatus] from a JSON map.
  factory ModelStatus.fromJson(Map<String, dynamic> json) =>
      _$ModelStatusFromJson(json);

  /// Creates a [ModelStatus] from a key-value status entry.
  factory ModelStatus.fromEntry(String modelId, Map<String, dynamic> json) {
    return ModelStatus(
      modelId: modelId,
      isLoaded: json['loaded'] as bool? ?? json['is_loaded'] as bool? ?? false,
      engineType: json['engine_type'] as String?,
      details: json,
    );
  }
}

/// Response from unloading a model `POST /v1/models/{model_id}/unload`.
@freezed
abstract class UnloadModelResponse with _$UnloadModelResponse {
  /// Creates an [UnloadModelResponse] instance.
  const factory UnloadModelResponse({
    /// Whether the model was successfully unloaded.
    @Default(true) bool success,

    /// ID of the unloaded model.
    @JsonKey(name: 'model_id') required String modelId,

    /// Optional message or detail string.
    String? message,

    /// Raw response body map.
    @Default({}) Map<String, dynamic> raw,
  }) = _UnloadModelResponse;

  /// Creates an [UnloadModelResponse] from a JSON map.
  factory UnloadModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UnloadModelResponseFromJson(json);

  /// Creates an [UnloadModelResponse] from an unload response map.
  factory UnloadModelResponse.fromResponse(
      String modelId, Map<String, dynamic> json) {
    return UnloadModelResponse(
      success: json['success'] as bool? ??
          (json['status'] == 'ok' || json['status'] == 'unloaded'),
      modelId: modelId,
      message: json['message'] as String? ?? json['detail'] as String?,
      raw: json,
    );
  }
}
