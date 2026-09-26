import 'common.dart';

/// Request for `POST /v1/rerank`.
class RerankRequest {
  final String model;
  final String query;
  final List<String> documents;
  final int? topN;
  final bool? returnDocuments;

  const RerankRequest({
    required this.model,
    required this.query,
    required this.documents,
    this.topN,
    this.returnDocuments,
  });

  Map<String, dynamic> toJson() => {
        'model': model,
        'query': query,
        'documents': documents,
        if (topN != null) 'top_n': topN,
        if (returnDocuments != null) 'return_documents': returnDocuments,
      };

  @override
  String toString() =>
      'RerankRequest(model: $model, query: $query, docs: ${documents.length}, topN: $topN)';
}

/// A single reranked item with score and document index.
class RerankResult {
  final int index;
  final double relevanceScore;
  final String? document;

  const RerankResult({
    required this.index,
    required this.relevanceScore,
    this.document,
  });

  factory RerankResult.fromJson(Map<String, dynamic> json) {
    return RerankResult(
      index: (json['index'] as num?)?.toInt() ?? 0,
      relevanceScore: (json['relevance_score'] as num?)?.toDouble() ?? 0.0,
      document: json['document'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'relevance_score': relevanceScore,
        if (document != null) 'document': document,
      };

  @override
  String toString() =>
      'RerankResult(index: $index, score: $relevanceScore, doc: $document)';
}

/// Response returned by `POST /v1/rerank`.
class RerankResponse {
  final String model;
  final List<RerankResult> results;
  final Usage? usage;

  const RerankResponse({
    required this.model,
    required this.results,
    this.usage,
  });

  factory RerankResponse.fromJson(Map<String, dynamic> json) {
    final list = json['results'] as List<dynamic>? ?? [];
    return RerankResponse(
      model: json['model'] as String? ?? '',
      results: list
          .whereType<Map<String, dynamic>>()
          .map((e) => RerankResult.fromJson(e))
          .toList(),
      usage: json['usage'] is Map<String, dynamic>
          ? Usage.fromJson(json['usage'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'model': model,
        'results': results.map((r) => r.toJson()).toList(),
        if (usage != null) 'usage': usage!.toJson(),
      };

  @override
  String toString() => 'RerankResponse(model: $model, count: ${results.length})';
}
