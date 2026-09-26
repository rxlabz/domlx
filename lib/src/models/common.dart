/// Details about prompt tokens breakdown, including prefix-cached tokens.
class PromptTokensDetails {
  /// Number of tokens retrieved from the prefix cache.
  final int cachedTokens;

  const PromptTokensDetails({required this.cachedTokens});

  factory PromptTokensDetails.fromJson(Map<String, dynamic> json) {
    return PromptTokensDetails(
      cachedTokens: (json['cached_tokens'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        'cached_tokens': cachedTokens,
      };

  @override
  String toString() => 'PromptTokensDetails(cachedTokens: $cachedTokens)';
}

/// Token usage and timing statistics for an inference request.
/// Includes oMLX timing and SSD/prefix cache extensions.
class Usage {
  /// Number of tokens in the prompt/input.
  final int promptTokens;

  /// Number of tokens generated in the response.
  final int completionTokens;

  /// Total tokens (prompt + completion).
  final int totalTokens;

  /// Cached tokens retrieved from oMLX prefix cache.
  final int? cachedTokens;

  /// Detailed token breakdown.
  final PromptTokensDetails? promptTokensDetails;

  /// Duration of prefill phase in seconds (oMLX extension).
  final double? prefillDuration;

  /// Duration of generation phase in seconds (oMLX extension).
  final double? generationDuration;

  const Usage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
    this.cachedTokens,
    this.promptTokensDetails,
    this.prefillDuration,
    this.generationDuration,
  });

  factory Usage.fromJson(Map<String, dynamic> json) {
    final cached = (json['cached_tokens'] as num?)?.toInt() ??
        (json['prompt_tokens_details'] != null
            ? (json['prompt_tokens_details']['cached_tokens'] as num?)?.toInt()
            : null);

    return Usage(
      promptTokens: (json['prompt_tokens'] as num?)?.toInt() ?? 0,
      completionTokens: (json['completion_tokens'] as num?)?.toInt() ?? 0,
      totalTokens: (json['total_tokens'] as num?)?.toInt() ?? 0,
      cachedTokens: cached,
      promptTokensDetails: json['prompt_tokens_details'] is Map<String, dynamic>
          ? PromptTokensDetails.fromJson(
              json['prompt_tokens_details'] as Map<String, dynamic>)
          : null,
      prefillDuration: (json['prefill_duration'] as num?)?.toDouble(),
      generationDuration: (json['generation_duration'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'prompt_tokens': promptTokens,
        'completion_tokens': completionTokens,
        'total_tokens': totalTokens,
        if (cachedTokens != null) 'cached_tokens': cachedTokens,
        if (promptTokensDetails != null)
          'prompt_tokens_details': promptTokensDetails!.toJson(),
        if (prefillDuration != null) 'prefill_duration': prefillDuration,
        if (generationDuration != null)
          'generation_duration': generationDuration,
      };

  @override
  String toString() =>
      'Usage(prompt: $promptTokens, completion: $completionTokens, total: $totalTokens, cached: $cachedTokens)';
}
