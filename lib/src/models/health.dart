/// Response returned by the `/health` endpoint.
class HealthResponse {
  final String status;
  final String? version;
  final String? defaultModel;
  final Map<String, dynamic>? enginePool;
  final Map<String, dynamic>? mcp;
  final Map<String, dynamic> raw;

  const HealthResponse({
    required this.status,
    this.version,
    this.defaultModel,
    this.enginePool,
    this.mcp,
    this.raw = const {},
  });

  bool get isHealthy => status.toLowerCase() == 'ok' || status.toLowerCase() == 'healthy';

  factory HealthResponse.fromJson(Map<String, dynamic> json) {
    return HealthResponse(
      status: json['status'] as String? ?? 'unknown',
      version: json['version'] as String?,
      defaultModel: json['default_model'] as String?,
      enginePool: json['engine_pool'] is Map<String, dynamic>
          ? json['engine_pool'] as Map<String, dynamic>
          : null,
      mcp: json['mcp'] is Map<String, dynamic>
          ? json['mcp'] as Map<String, dynamic>
          : null,
      raw: json,
    );
  }

  Map<String, dynamic> toJson() => raw;

  @override
  String toString() =>
      'HealthResponse(status: $status, version: $version, defaultModel: $defaultModel)';
}
