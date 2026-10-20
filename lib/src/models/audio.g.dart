// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AudioTranscriptionResponse _$AudioTranscriptionResponseFromJson(
  Map<String, dynamic> json,
) => _AudioTranscriptionResponse(
  text: json['text'] as String? ?? '',
  raw: json['raw'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$AudioTranscriptionResponseToJson(
  _AudioTranscriptionResponse instance,
) => <String, dynamic>{'text': instance.text, 'raw': instance.raw};

_AudioSpeechRequest _$AudioSpeechRequestFromJson(Map<String, dynamic> json) =>
    _AudioSpeechRequest(
      model: json['model'] as String,
      input: json['input'] as String,
      voice: json['voice'] as String,
      responseFormat: json['response_format'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AudioSpeechRequestToJson(_AudioSpeechRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'input': instance.input,
      'voice': instance.voice,
      'response_format': ?instance.responseFormat,
      'speed': ?instance.speed,
    };
