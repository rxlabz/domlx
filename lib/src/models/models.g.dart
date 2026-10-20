// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelInfo _$ModelInfoFromJson(Map<String, dynamic> json) => _ModelInfo(
  id: json['id'] as String,
  object: json['object'] as String? ?? 'model',
  created: (json['created'] as num?)?.toInt(),
  ownedBy: json['owned_by'] as String?,
  raw: _readRaw(json, 'raw') as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ModelInfoToJson(_ModelInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': ?instance.created,
      'owned_by': ?instance.ownedBy,
    };

_ModelsResponse _$ModelsResponseFromJson(Map<String, dynamic> json) =>
    _ModelsResponse(
      object: json['object'] as String? ?? 'list',
      data: (json['data'] as List<dynamic>)
          .map((e) => ModelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelsResponseToJson(_ModelsResponse instance) =>
    <String, dynamic>{
      'object': instance.object,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_ModelStatus _$ModelStatusFromJson(Map<String, dynamic> json) => _ModelStatus(
  modelId: json['model_id'] as String,
  isLoaded: json['loaded'] as bool? ?? false,
  engineType: json['engine_type'] as String?,
  details: json['details'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ModelStatusToJson(_ModelStatus instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'loaded': instance.isLoaded,
      'engine_type': ?instance.engineType,
      'details': instance.details,
    };

_UnloadModelResponse _$UnloadModelResponseFromJson(Map<String, dynamic> json) =>
    _UnloadModelResponse(
      success: json['success'] as bool? ?? true,
      modelId: json['model_id'] as String,
      message: json['message'] as String?,
      raw: json['raw'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$UnloadModelResponseToJson(
  _UnloadModelResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'model_id': instance.modelId,
  'message': ?instance.message,
  'raw': instance.raw,
};
