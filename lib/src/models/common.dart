import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.freezed.dart';
part 'common.g.dart';

Object? _readCachedTokens(Map json, String key) {
  return json['cached_tokens'] ??
      (json['prompt_tokens_details'] is Map
          ? json['prompt_tokens_details']['cached_tokens']
          : null);
}

/// Details about prompt tokens breakdown, including prefix-cached tokens.
@freezed
abstract class PromptTokensDetails with _$PromptTokensDetails {
  const factory PromptTokensDetails({
    @JsonKey(name: 'cached_tokens') @Default(0) int cachedTokens,
  }) = _PromptTokensDetails;

  factory PromptTokensDetails.fromJson(Map<String, dynamic> json) =>
      _$PromptTokensDetailsFromJson(json);
}

/// Token usage and timing statistics for an inference request.
/// Includes oMLX timing and SSD/prefix cache extensions.
@freezed
abstract class Usage with _$Usage {
  const Usage._();

  const factory Usage({
    @JsonKey(name: 'prompt_tokens') @Default(0) int promptTokens,
    @JsonKey(name: 'completion_tokens') @Default(0) int completionTokens,
    @JsonKey(name: 'total_tokens') @Default(0) int totalTokens,
    @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens)
    int? cachedTokens,
    @JsonKey(name: 'prompt_tokens_details')
    PromptTokensDetails? promptTokensDetails,
    @JsonKey(name: 'prefill_duration') double? prefillDuration,
    @JsonKey(name: 'generation_duration') double? generationDuration,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
