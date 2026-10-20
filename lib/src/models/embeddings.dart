import 'package:freezed_annotation/freezed_annotation.dart';
import 'common.dart';

part 'embeddings.freezed.dart';
part 'embeddings.g.dart';

Object? _readEmbedding(Map json, String key) {
  final val = json['embedding'];
  if (val is List) {
    return val.map((e) => (e as num).toDouble()).toList();
  }
  return null;
}

Object? _readBase64(Map json, String key) {
  final val = json['embedding'];
  if (val is String) {
    return val;
  }
  return json['base64_embedding'];
}

/// Request for `POST /v1/embeddings`.
@freezed
abstract class EmbeddingRequest with _$EmbeddingRequest {
  const factory EmbeddingRequest({
    required String model,

    /// Input text string or list of text strings.
    required dynamic input,

    /// Optional encoding format: "float" (default) or "base64".
    @JsonKey(name: 'encoding_format') String? encodingFormat,

    /// Optional dimension cutoff if supported by model.
    int? dimensions,

    /// User identifier.
    String? user,
  }) = _EmbeddingRequest;

  /// Typed factory for single text input.
  factory EmbeddingRequest.single({
    required String model,
    required String text,
    String? encodingFormat,
    int? dimensions,
    String? user,
  }) =>
      EmbeddingRequest(
        model: model,
        input: text,
        encodingFormat: encodingFormat,
        dimensions: dimensions,
        user: user,
      );

  /// Typed factory for batch text inputs.
  factory EmbeddingRequest.batch({
    required String model,
    required List<String> texts,
    String? encodingFormat,
    int? dimensions,
    String? user,
  }) =>
      EmbeddingRequest(
        model: model,
        input: texts,
        encodingFormat: encodingFormat,
        dimensions: dimensions,
        user: user,
      );

  factory EmbeddingRequest.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingRequestFromJson(json);
}

/// An individual embedding result vector or base64 representation.
@freezed
abstract class EmbeddingItem with _$EmbeddingItem {
  const factory EmbeddingItem({
    @Default(0) int index,
    @Default('embedding') String object,

    /// The embedding vector when encoding is float.
    @JsonKey(readValue: _readEmbedding) List<double>? embedding,

    /// The base64-encoded vector string when encoding is base64.
    @JsonKey(name: 'base64_embedding', readValue: _readBase64)
    String? base64Embedding,
  }) = _EmbeddingItem;

  factory EmbeddingItem.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingItemFromJson(json);
}

/// Response returned by `POST /v1/embeddings`.
@freezed
abstract class EmbeddingResponse with _$EmbeddingResponse {
  const factory EmbeddingResponse({
    @Default('list') String object,
    required String model,
    required List<EmbeddingItem> data,
    Usage? usage,
  }) = _EmbeddingResponse;

  factory EmbeddingResponse.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingResponseFromJson(json);
}
