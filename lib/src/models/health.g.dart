// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthResponse _$HealthResponseFromJson(Map<String, dynamic> json) =>
    _HealthResponse(
      status: json['status'] as String,
      version: json['version'] as String?,
      defaultModel: json['default_model'] as String?,
      enginePool: json['engine_pool'] as Map<String, dynamic>?,
      mcp: json['mcp'] as Map<String, dynamic>?,
      raw: _readRaw(json, 'raw') as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$HealthResponseToJson(_HealthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'version': ?instance.version,
      'default_model': ?instance.defaultModel,
      'engine_pool': ?instance.enginePool,
      'mcp': ?instance.mcp,
      'raw': instance.raw,
    };
