// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rerank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RerankRequest _$RerankRequestFromJson(Map<String, dynamic> json) =>
    _RerankRequest(
      model: json['model'] as String,
      query: json['query'] as String,
      documents: (json['documents'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      topN: (json['top_n'] as num?)?.toInt(),
      returnDocuments: json['return_documents'] as bool?,
    );

Map<String, dynamic> _$RerankRequestToJson(_RerankRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'query': instance.query,
      'documents': instance.documents,
      'top_n': ?instance.topN,
      'return_documents': ?instance.returnDocuments,
    };

_RerankResult _$RerankResultFromJson(Map<String, dynamic> json) =>
    _RerankResult(
      index: (json['index'] as num?)?.toInt() ?? 0,
      relevanceScore: (json['relevance_score'] as num?)?.toDouble() ?? 0.0,
      document: _readDocument(json, 'document') as String?,
    );

Map<String, dynamic> _$RerankResultToJson(_RerankResult instance) =>
    <String, dynamic>{
      'index': instance.index,
      'relevance_score': instance.relevanceScore,
      'document': ?instance.document,
    };

_RerankResponse _$RerankResponseFromJson(Map<String, dynamic> json) =>
    _RerankResponse(
      model: json['model'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => RerankResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RerankResponseToJson(_RerankResponse instance) =>
    <String, dynamic>{
      'model': instance.model,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'usage': ?instance.usage?.toJson(),
    };
