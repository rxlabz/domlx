import 'package:freezed_annotation/freezed_annotation.dart';
import 'common.dart';

part 'completions.freezed.dart';
part 'completions.g.dart';

/// Request payload for legacy text completion `POST /v1/completions`.
@Freezed(toJson: false)
abstract class CompletionRequest with _$CompletionRequest {
  const CompletionRequest._();

  /// Creates a [CompletionRequest] instance.
  const factory CompletionRequest({
    /// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
    required String model,

    /// Prompt string or list of prompt strings/token IDs.
    required dynamic prompt,

    /// Sampling temperature (default 1.0).
    double? temperature,

    /// Nucleus sampling probability threshold.
    @JsonKey(name: 'top_p') double? topP,

    /// Maximum tokens to generate.
    @JsonKey(name: 'max_tokens') int? maxTokens,

    /// Number of completions to generate for each prompt.
    int? n,

    /// Whether to stream partial tokens via SSE.
    bool? stream,

    /// Stop sequences.
    dynamic stop,

    /// Suffix that comes after a completion of inserted text.
    String? suffix,

    /// Echo back the prompt in addition to the completion.
    bool? echo,

    /// User identifier for tracking.
    String? user,

    /// Additional parameters.
    @Default({}) Map<String, dynamic> extra,
  }) = _CompletionRequest;

  /// Serializes this request to a JSON map.
  Map<String, dynamic> toJson() => {
        'model': model,
        'prompt': prompt,
        if (temperature != null) 'temperature': temperature,
        if (topP != null) 'top_p': topP,
        if (maxTokens != null) 'max_tokens': maxTokens,
        if (n != null) 'n': n,
        if (stream != null) 'stream': stream,
        if (stop != null) 'stop': stop,
        if (suffix != null) 'suffix': suffix,
        if (echo != null) 'echo': echo,
        if (user != null) 'user': user,
        ...extra,
      };

  /// Creates a [CompletionRequest] from a JSON map.
  factory CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$CompletionRequestFromJson(json);
}

/// A choice in a text completion response.
@freezed
abstract class CompletionChoice with _$CompletionChoice {
  /// Creates a [CompletionChoice] instance.
  const factory CompletionChoice({
    /// The generated completion text.
    required String text,

    /// Choice index.
    @Default(0) int index,

    /// Reason why generation stopped.
    @JsonKey(name: 'finish_reason') String? finishReason,

    /// Token log probability information.
    Map<String, dynamic>? logprobs,
  }) = _CompletionChoice;

  /// Creates a [CompletionChoice] from a JSON map.
  factory CompletionChoice.fromJson(Map<String, dynamic> json) =>
      _$CompletionChoiceFromJson(json);
}

/// Response returned by `POST /v1/completions`.
@freezed
abstract class TextCompletion with _$TextCompletion {
  const TextCompletion._();

  /// Creates a [TextCompletion] instance.
  const factory TextCompletion({
    /// Unique completion ID.
    required String id,

    /// Object type, typically 'text_completion'.
    @Default('text_completion') String object,

    /// Unix timestamp when completion was generated.
    required int created,

    /// Model ID used.
    required String model,

    /// Generated completion choices.
    required List<CompletionChoice> choices,

    /// Token usage statistics.
    Usage? usage,
  }) = _TextCompletion;

  /// Convenient getter for the first generated text.
  String get firstText => choices.isNotEmpty ? choices.first.text : '';

  /// Creates a [TextCompletion] from a JSON map.
  factory TextCompletion.fromJson(Map<String, dynamic> json) =>
      _$TextCompletionFromJson(json);
}
