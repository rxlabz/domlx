import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.freezed.dart';
part 'audio.g.dart';

/// Request for `POST /v1/audio/transcriptions` (Speech-to-Text).
@freezed
abstract class AudioTranscriptionRequest with _$AudioTranscriptionRequest {
  const factory AudioTranscriptionRequest({
    /// The audio file bytes to transcribe.
    required List<int> fileBytes,

    /// The filename (e.g. 'recording.wav', 'speech.mp3').
    required String filename,

    /// Model ID (e.g. 'whisper-large-v3', 'mlx-community/whisper-tiny').
    required String model,

    /// Optional language code in ISO-639-1 format (e.g. 'en', 'es', 'fr').
    String? language,

    /// Optional text prompt to guide the model's style or vocabulary.
    String? prompt,

    /// Desired response format: "json" (default), "text", "verbose_json", "srt", "vtt".
    @JsonKey(name: 'response_format') String? responseFormat,

    /// Sampling temperature between 0 and 1.
    double? temperature,
  }) = _AudioTranscriptionRequest;
}

/// Response returned by `POST /v1/audio/transcriptions`.
@freezed
abstract class AudioTranscriptionResponse with _$AudioTranscriptionResponse {
  const factory AudioTranscriptionResponse({
    @Default('') String text,
    @Default({}) Map<String, dynamic> raw,
  }) = _AudioTranscriptionResponse;

  factory AudioTranscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioTranscriptionResponseFromJson(json).copyWith(raw: json);
}

/// Request for `POST /v1/audio/speech` (Text-to-Speech).
@freezed
abstract class AudioSpeechRequest with _$AudioSpeechRequest {
  const factory AudioSpeechRequest({
    /// Model ID (e.g., 'tts-1', 'mlx-community/Kokoro-82M').
    required String model,

    /// The text to synthesize into speech.
    required String input,

    /// Voice to use (e.g. 'alloy', 'echo', 'fable', 'onyx', 'nova', 'shimmer').
    required String voice,

    /// Audio format: "mp3" (default), "opus", "aac", "flac", "wav", or "pcm".
    @JsonKey(name: 'response_format') String? responseFormat,

    /// Speech speed between 0.25 and 4.0 (default 1.0).
    double? speed,
  }) = _AudioSpeechRequest;

  factory AudioSpeechRequest.fromJson(Map<String, dynamic> json) =>
      _$AudioSpeechRequestFromJson(json);
}
