import 'package:http/http.dart' as http;
import '../client/http_client.dart';
import '../models/audio.dart';

/// Service for Audio endpoints: STT (Speech-to-Text) and TTS (Text-to-Speech).
class AudioService {
  final OmlxHttpClient _client;

  const AudioService(this._client);

  /// Transcribes audio via Whisper (`POST /v1/audio/transcriptions`).
  Future<AudioTranscriptionResponse> transcribe(
      AudioTranscriptionRequest request) async {
    final fields = <String, String>{
      'model': request.model,
      if (request.language != null) 'language': request.language!,
      if (request.prompt != null) 'prompt': request.prompt!,
      if (request.responseFormat != null)
        'response_format': request.responseFormat!,
      if (request.temperature != null)
        'temperature': request.temperature!.toString(),
    };

    final json = await _client.postMultipart(
      '/v1/audio/transcriptions',
      files: [
        http.MultipartFile.fromBytes(
          'file',
          request.fileBytes,
          filename: request.filename,
        ),
      ],
      fields: fields,
    );

    if (json is Map<String, dynamic>) {
      return AudioTranscriptionResponse.fromJson(json);
    }
    return AudioTranscriptionResponse(text: json.toString());
  }

  /// Synthesizes text into audio bytes (`POST /v1/audio/speech`).
  Future<List<int>> speech(AudioSpeechRequest request) async {
    return _client.postBinary('/v1/audio/speech', body: request.toJson());
  }
}
