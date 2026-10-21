import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'common.dart';

part 'rerank.freezed.dart';
part 'rerank.g.dart';

Object? _readDocument(Map<dynamic, dynamic> json, String key) {
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
  /// Creates a [RerankRequest] instance.
  const factory RerankRequest({
    /// Model ID used for reranking.
    required String model,

    /// Query string to match against.
    required String query,

    /// List of document texts to rerank.
    required List<String> documents,

    /// Optional number of top results to return.
    @JsonKey(name: 'top_n') int? topN,

    /// Whether to return document texts in results.
    @JsonKey(name: 'return_documents') bool? returnDocuments,
  }) = _RerankRequest;

  /// Creates a [RerankRequest] from a JSON map.
  factory RerankRequest.fromJson(Map<String, dynamic> json) =>
      _$RerankRequestFromJson(json);
}

/// A single reranked item with score and document index.
@freezed
abstract class RerankResult with _$RerankResult {
  /// Creates a [RerankResult] instance.
  const factory RerankResult({
    /// Index of the document in the original input list.
    @Default(0) int index,

    /// Relevance score between 0.0 and 1.0.
    @JsonKey(name: 'relevance_score') @Default(0.0) double relevanceScore,

    /// Document text, if returned.
    @JsonKey(readValue: _readDocument) String? document,
  }) = _RerankResult;

  /// Creates a [RerankResult] from a JSON map.
  factory RerankResult.fromJson(Map<String, dynamic> json) =>
      _$RerankResultFromJson(json);
}

/// Response returned by `POST /v1/rerank`.
@freezed
abstract class RerankResponse with _$RerankResponse {
  /// Creates a [RerankResponse] instance.
  const factory RerankResponse({
    /// Model ID used for reranking.
    required String model,

    /// Reranked results ordered by relevance.
    required List<RerankResult> results,

    /// Token usage statistics.
    Usage? usage,
  }) = _RerankResponse;

  /// Creates a [RerankResponse] from a JSON map.
  factory RerankResponse.fromJson(Map<String, dynamic> json) =>
      _$RerankResponseFromJson(json);
}
