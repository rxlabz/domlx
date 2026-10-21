import 'package:freezed_annotation/freezed_annotation.dart';

part 'health.freezed.dart';
part 'health.g.dart';

Object? _readRaw(Map<dynamic, dynamic> json, String key) => json;

/// Response returned by the `/health` endpoint.
@freezed
abstract class HealthResponse with _$HealthResponse {
  const HealthResponse._();

  /// Creates a [HealthResponse] instance.
  const factory HealthResponse({
    /// Server status string (e.g. 'ok', 'healthy').
    required String status,

    /// oMLX server version.
    String? version,

    /// Default loaded model ID, if any.
    @JsonKey(name: 'default_model') String? defaultModel,

    /// Status of the inference engine pool.
    @JsonKey(name: 'engine_pool') Map<String, dynamic>? enginePool,

    /// Model Context Protocol settings or state.
    Map<String, dynamic>? mcp,

    /// Raw JSON response map.
    @JsonKey(readValue: _readRaw, includeToJson: false)
    @Default({})
    Map<String, dynamic> raw,
  }) = _HealthResponse;

  /// Whether the status indicates a healthy instance ('ok' or 'healthy').
  bool get isHealthy =>
      status.toLowerCase() == 'ok' || status.toLowerCase() == 'healthy';

  /// Creates a [HealthResponse] from a JSON map.
  factory HealthResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthResponseFromJson(json);
}
