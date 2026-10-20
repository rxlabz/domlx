// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embeddings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmbeddingRequest _$EmbeddingRequestFromJson(Map<String, dynamic> json) =>
    _EmbeddingRequest(
      model: json['model'] as String,
      input: json['input'],
      encodingFormat: json['encoding_format'] as String?,
      dimensions: (json['dimensions'] as num?)?.toInt(),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$EmbeddingRequestToJson(_EmbeddingRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'input': ?instance.input,
      'encoding_format': ?instance.encodingFormat,
      'dimensions': ?instance.dimensions,
      'user': ?instance.user,
    };

_EmbeddingItem _$EmbeddingItemFromJson(Map<String, dynamic> json) =>
    _EmbeddingItem(
      index: (json['index'] as num?)?.toInt() ?? 0,
      object: json['object'] as String? ?? 'embedding',
      embedding: (_readEmbedding(json, 'embedding') as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      base64Embedding: _readBase64(json, 'base64_embedding') as String?,
    );

Map<String, dynamic> _$EmbeddingItemToJson(_EmbeddingItem instance) =>
    <String, dynamic>{
      'index': instance.index,
      'object': instance.object,
      'embedding': ?instance.embedding,
      'base64_embedding': ?instance.base64Embedding,
    };

_EmbeddingResponse _$EmbeddingResponseFromJson(Map<String, dynamic> json) =>
    _EmbeddingResponse(
      object: json['object'] as String? ?? 'list',
      model: json['model'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EmbeddingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmbeddingResponseToJson(_EmbeddingResponse instance) =>
    <String, dynamic>{
      'object': instance.object,
      'model': instance.model,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'usage': ?instance.usage?.toJson(),
    };
