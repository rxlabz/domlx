import 'package:freezed_annotation/freezed_annotation.dart';

part 'health.freezed.dart';
part 'health.g.dart';

Object? _readRaw(Map json, String key) => json;

/// Response returned by the `/health` endpoint.
@freezed
abstract class HealthResponse with _$HealthResponse {
  const HealthResponse._();

  const factory HealthResponse({
    required String status,
    String? version,
    @JsonKey(name: 'default_model') String? defaultModel,
    @JsonKey(name: 'engine_pool') Map<String, dynamic>? enginePool,
    Map<String, dynamic>? mcp,
    @JsonKey(readValue: _readRaw) @Default({}) Map<String, dynamic> raw,
  }) = _HealthResponse;

  /// Whether the status indicates a healthy instance ('ok' or 'healthy').
  bool get isHealthy =>
      status.toLowerCase() == 'ok' || status.toLowerCase() == 'healthy';

  factory HealthResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthResponseFromJson(json);
}
