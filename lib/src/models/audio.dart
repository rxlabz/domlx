/// Request for `POST /v1/audio/transcriptions` (Speech-to-Text).
class AudioTranscriptionRequest {
  /// The audio file bytes to transcribe.
  final List<int> fileBytes;

  /// The filename (e.g. 'recording.wav', 'speech.mp3').
  final String filename;

  /// Model ID (e.g. 'whisper-large-v3', 'mlx-community/whisper-tiny').
  final String model;

  /// Optional language code in ISO-639-1 format (e.g. 'en', 'es', 'fr').
  final String? language;

  /// Optional text prompt to guide the model's style or vocabulary.
  final String? prompt;

  /// Desired response format: "json" (default), "text", "verbose_json", "srt", "vtt".
  final String? responseFormat;

  /// Sampling temperature between 0 and 1.
  final double? temperature;

  const AudioTranscriptionRequest({
    required this.fileBytes,
    required this.filename,
    required this.model,
    this.language,
    this.prompt,
    this.responseFormat,
    this.temperature,
  });

  @override
  String toString() =>
      'AudioTranscriptionRequest(model: $model, file: $filename, bytes: ${fileBytes.length})';
}

/// Response returned by `POST /v1/audio/transcriptions`.
class AudioTranscriptionResponse {
  final String text;
  final Map<String, dynamic> raw;

  const AudioTranscriptionResponse({
    required this.text,
    this.raw = const {},
  });

  factory AudioTranscriptionResponse.fromJson(Map<String, dynamic> json) {
    return AudioTranscriptionResponse(
      text: json['text'] as String? ?? '',
      raw: json,
    );
  }

  Map<String, dynamic> toJson() => raw;

  @override
  String toString() => 'AudioTranscriptionResponse(text: $text)';
}

/// Request for `POST /v1/audio/speech` (Text-to-Speech).
class AudioSpeechRequest {
  /// Model ID (e.g., 'tts-1', 'mlx-community/Kokoro-82M').
  final String model;

  /// The text to synthesize into speech.
  final String input;

  /// Voice to use (e.g. 'alloy', 'echo', 'fable', 'onyx', 'nova', 'shimmer').
  final String voice;

  /// Audio format: "mp3" (default), "opus", "aac", "flac", "wav", or "pcm".
  final String? responseFormat;

  /// Speech speed between 0.25 and 4.0 (default 1.0).
  final double? speed;

  const AudioSpeechRequest({
    required this.model,
    required this.input,
    required this.voice,
    this.responseFormat,
    this.speed,
  });

  Map<String, dynamic> toJson() => {
        'model': model,
        'input': input,
        'voice': voice,
        if (responseFormat != null) 'response_format': responseFormat,
        if (speed != null) 'speed': speed,
      };

  @override
  String toString() =>
      'AudioSpeechRequest(model: $model, voice: $voice, input: ${input.length > 30 ? "${input.substring(0, 30)}..." : input})';
}
