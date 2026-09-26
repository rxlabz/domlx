import 'common.dart';

/// Request for `POST /v1/embeddings`.
class EmbeddingRequest {
  final String model;

  /// Input text string or list of text strings.
  final dynamic input;

  /// Optional encoding format: "float" (default) or "base64".
  final String? encodingFormat;

  /// Optional dimension cutoff if supported by model.
  final int? dimensions;

  /// User identifier.
  final String? user;

  const EmbeddingRequest({
    required this.model,
    required this.input,
    this.encodingFormat,
    this.dimensions,
    this.user,
  });

  Map<String, dynamic> toJson() => {
        'model': model,
        'input': input,
        if (encodingFormat != null) 'encoding_format': encodingFormat,
        if (dimensions != null) 'dimensions': dimensions,
        if (user != null) 'user': user,
      };

  @override
  String toString() => 'EmbeddingRequest(model: $model, encodingFormat: $encodingFormat)';
}

/// An individual embedding result vector or base64 representation.
class EmbeddingItem {
  final int index;
  final String object;

  /// The embedding vector when encoding is float.
  final List<double>? embedding;

  /// The base64-encoded vector string when encoding is base64.
  final String? base64Embedding;

  const EmbeddingItem({
    required this.index,
    this.object = 'embedding',
    this.embedding,
    this.base64Embedding,
  });

  factory EmbeddingItem.fromJson(Map<String, dynamic> json) {
    final raw = json['embedding'];
    List<double>? vector;
    String? b64;

    if (raw is List) {
      vector = raw.map((e) => (e as num).toDouble()).toList();
    } else if (raw is String) {
      b64 = raw;
    }

    return EmbeddingItem(
      index: (json['index'] as num?)?.toInt() ?? 0,
      object: json['object'] as String? ?? 'embedding',
      embedding: vector,
      base64Embedding: b64,
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'object': object,
        if (embedding != null) 'embedding': embedding,
        if (base64Embedding != null) 'embedding': base64Embedding,
      };

  @override
  String toString() =>
      'EmbeddingItem(index: $index, dim: ${embedding?.length ?? base64Embedding?.length})';
}

/// Response returned by `POST /v1/embeddings`.
class EmbeddingResponse {
  final String object;
  final String model;
  final List<EmbeddingItem> data;
  final Usage? usage;

  const EmbeddingResponse({
    this.object = 'list',
    required this.model,
    required this.data,
    this.usage,
  });

  factory EmbeddingResponse.fromJson(Map<String, dynamic> json) {
    final list = json['data'] as List<dynamic>? ?? [];
    return EmbeddingResponse(
      object: json['object'] as String? ?? 'list',
      model: json['model'] as String? ?? '',
      data: list
          .whereType<Map<String, dynamic>>()
          .map((e) => EmbeddingItem.fromJson(e))
          .toList(),
      usage: json['usage'] is Map<String, dynamic>
          ? Usage.fromJson(json['usage'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'object': object,
        'model': model,
        'data': data.map((e) => e.toJson()).toList(),
        if (usage != null) 'usage': usage!.toJson(),
      };

  @override
  String toString() => 'EmbeddingResponse(model: $model, count: ${data.length})';
}
