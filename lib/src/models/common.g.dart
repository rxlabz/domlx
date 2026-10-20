// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromptTokensDetails _$PromptTokensDetailsFromJson(Map<String, dynamic> json) =>
    _PromptTokensDetails(
      cachedTokens: (json['cached_tokens'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PromptTokensDetailsToJson(
  _PromptTokensDetails instance,
) => <String, dynamic>{'cached_tokens': instance.cachedTokens};

_Usage _$UsageFromJson(Map<String, dynamic> json) => _Usage(
  promptTokens: (json['prompt_tokens'] as num?)?.toInt() ?? 0,
  completionTokens: (json['completion_tokens'] as num?)?.toInt() ?? 0,
  totalTokens: (json['total_tokens'] as num?)?.toInt() ?? 0,
  cachedTokens: (_readCachedTokens(json, 'cached_tokens') as num?)?.toInt(),
  promptTokensDetails: json['prompt_tokens_details'] == null
      ? null
      : PromptTokensDetails.fromJson(
          json['prompt_tokens_details'] as Map<String, dynamic>,
        ),
  prefillDuration: (json['prefill_duration'] as num?)?.toDouble(),
  generationDuration: (json['generation_duration'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UsageToJson(_Usage instance) => <String, dynamic>{
  'prompt_tokens': instance.promptTokens,
  'completion_tokens': instance.completionTokens,
  'total_tokens': instance.totalTokens,
  'cached_tokens': ?instance.cachedTokens,
  'prompt_tokens_details': ?instance.promptTokensDetails?.toJson(),
  'prefill_duration': ?instance.prefillDuration,
  'generation_duration': ?instance.generationDuration,
};
