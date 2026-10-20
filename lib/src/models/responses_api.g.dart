// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsesResponse _$ResponsesResponseFromJson(Map<String, dynamic> json) =>
    _ResponsesResponse(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'response',
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      status: json['status'] as String? ?? 'completed',
      output: (json['output'] as List<dynamic>)
          .map((e) => ResponseOutputItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      outputText: json['output_text'] as String?,
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
      raw: json['raw'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ResponsesResponseToJson(_ResponsesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'status': instance.status,
      'output': instance.output.map((e) => e.toJson()).toList(),
      'output_text': ?instance.outputText,
      'usage': ?instance.usage?.toJson(),
      'raw': instance.raw,
    };
