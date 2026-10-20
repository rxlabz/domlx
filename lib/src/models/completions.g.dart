// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompletionRequest _$CompletionRequestFromJson(Map<String, dynamic> json) =>
    _CompletionRequest(
      model: json['model'] as String,
      prompt: json['prompt'],
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      n: (json['n'] as num?)?.toInt(),
      stream: json['stream'] as bool?,
      stop: json['stop'],
      suffix: json['suffix'] as String?,
      echo: json['echo'] as bool?,
      user: json['user'] as String?,
      extra: json['extra'] as Map<String, dynamic>? ?? const {},
    );

_CompletionChoice _$CompletionChoiceFromJson(Map<String, dynamic> json) =>
    _CompletionChoice(
      text: json['text'] as String,
      index: (json['index'] as num?)?.toInt() ?? 0,
      finishReason: json['finish_reason'] as String?,
      logprobs: json['logprobs'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CompletionChoiceToJson(_CompletionChoice instance) =>
    <String, dynamic>{
      'text': instance.text,
      'index': instance.index,
      'finish_reason': ?instance.finishReason,
      'logprobs': ?instance.logprobs,
    };

_TextCompletion _$TextCompletionFromJson(Map<String, dynamic> json) =>
    _TextCompletion(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'text_completion',
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => CompletionChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextCompletionToJson(_TextCompletion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'usage': ?instance.usage?.toJson(),
    };
