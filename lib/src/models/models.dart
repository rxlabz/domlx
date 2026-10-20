import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

Object? _readRaw(Map json, String key) => json;

/// Metadata for a single model discovered by oMLX.
@freezed
abstract class ModelInfo with _$ModelInfo {
  const factory ModelInfo({
    required String id,
    @Default('model') String object,
    int? created,
    @JsonKey(name: 'owned_by') String? ownedBy,
    @JsonKey(readValue: _readRaw) @Default({}) Map<String, dynamic> raw,
  }) = _ModelInfo;

  factory ModelInfo.fromJson(Map<String, dynamic> json) =>
      _$ModelInfoFromJson(json);
}

/// Response returned by `GET /v1/models`.
@freezed
abstract class ModelsResponse with _$ModelsResponse {
  const factory ModelsResponse({
    @Default('list') String object,
    required List<ModelInfo> data,
  }) = _ModelsResponse;

  factory ModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsResponseFromJson(json);
}

/// Detailed status information for loaded models from `GET /v1/models/status`.
@freezed
abstract class ModelStatus with _$ModelStatus {
  const factory ModelStatus({
    @JsonKey(name: 'model_id') required String modelId,
    @JsonKey(name: 'loaded') @Default(false) bool isLoaded,
    @JsonKey(name: 'engine_type') String? engineType,
    @Default({}) Map<String, dynamic> details,
  }) = _ModelStatus;

  factory ModelStatus.fromJson(Map<String, dynamic> json) =>
      _$ModelStatusFromJson(json);

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
  const factory UnloadModelResponse({
    @Default(true) bool success,
    @JsonKey(name: 'model_id') required String modelId,
    String? message,
    @Default({}) Map<String, dynamic> raw,
  }) = _UnloadModelResponse;

  factory UnloadModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UnloadModelResponseFromJson(json);

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
