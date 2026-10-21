import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.freezed.dart';
part 'common.g.dart';

Object? _readCachedTokens(Map<dynamic, dynamic> json, String key) {
  return json['cached_tokens'] ??
      (json['prompt_tokens_details'] is Map
          ? (json['prompt_tokens_details'] as Map)['cached_tokens']
          : null);
}

/// Details about prompt tokens breakdown, including prefix-cached tokens.
@freezed
abstract class PromptTokensDetails with _$PromptTokensDetails {
  /// Creates a [PromptTokensDetails] instance.
  const factory PromptTokensDetails({
    /// The number of prefix-cached tokens.
    @JsonKey(name: 'cached_tokens') @Default(0) int cachedTokens,
  }) = _PromptTokensDetails;

  /// Creates a [PromptTokensDetails] from a JSON map.
  factory PromptTokensDetails.fromJson(Map<String, dynamic> json) =>
      _$PromptTokensDetailsFromJson(json);
}

/// Token usage and timing statistics for an inference request.
/// Includes oMLX timing and SSD/prefix cache extensions.
@freezed
abstract class Usage with _$Usage {
  const Usage._();

  /// Creates a [Usage] instance.
  const factory Usage({
    /// Number of prompt tokens evaluated.
    @JsonKey(name: 'prompt_tokens') @Default(0) int promptTokens,

    /// Number of completion tokens generated.
    @JsonKey(name: 'completion_tokens') @Default(0) int completionTokens,

    /// Total number of tokens evaluated and generated.
    @JsonKey(name: 'total_tokens') @Default(0) int totalTokens,

    /// Prefix-cached tokens reused from SSD/memory.
    @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens)
    int? cachedTokens,

    /// Breakdown of prompt tokens.
    @JsonKey(name: 'prompt_tokens_details')
    PromptTokensDetails? promptTokensDetails,

    /// Prefill time in seconds.
    @JsonKey(name: 'prefill_duration') double? prefillDuration,

    /// Generation time in seconds.
    @JsonKey(name: 'generation_duration') double? generationDuration,
  }) = _Usage;

  /// Creates a [Usage] from a JSON map.
  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
