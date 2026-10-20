import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'common.dart';

part 'rerank.freezed.dart';
part 'rerank.g.dart';

Object? _readDocument(Map json, String key) {
  final val = json['document'];
  if (val == null) return null;
  if (val is String) return val;
  if (val is Map) {
    final text = val['text'];
    if (text != null) return text.toString();
    return jsonEncode(val);
  }
  return val.toString();
}

/// Request for `POST /v1/rerank`.
@freezed
abstract class RerankRequest with _$RerankRequest {
  const factory RerankRequest({
    required String model,
    required String query,
    required List<String> documents,
    @JsonKey(name: 'top_n') int? topN,
    @JsonKey(name: 'return_documents') bool? returnDocuments,
  }) = _RerankRequest;

  factory RerankRequest.fromJson(Map<String, dynamic> json) =>
      _$RerankRequestFromJson(json);
}

/// A single reranked item with score and document index.
@freezed
abstract class RerankResult with _$RerankResult {
  const factory RerankResult({
    @Default(0) int index,
    @JsonKey(name: 'relevance_score') @Default(0.0) double relevanceScore,
    @JsonKey(readValue: _readDocument) String? document,
  }) = _RerankResult;

  factory RerankResult.fromJson(Map<String, dynamic> json) =>
      _$RerankResultFromJson(json);
}

/// Response returned by `POST /v1/rerank`.
@freezed
abstract class RerankResponse with _$RerankResponse {
  const factory RerankResponse({
    required String model,
    required List<RerankResult> results,
    Usage? usage,
  }) = _RerankResponse;

  factory RerankResponse.fromJson(Map<String, dynamic> json) =>
      _$RerankResponseFromJson(json);
}
