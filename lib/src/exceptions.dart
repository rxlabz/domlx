/// Base exception for all errors thrown by the oMLX client library.
sealed class OmlxException implements Exception {
  final String message;

  const OmlxException(this.message);

  @override
  String toString() => '$runtimeType: $message';
}

/// Exception thrown when the oMLX API server returns an error HTTP status code.
class OmlxApiException extends OmlxException {
  /// HTTP status code (e.g., 400, 401, 404, 409, 500, 507).
  final int statusCode;

  /// Optional error type or code returned by the server.
  final String? errorType;

  /// Optional detailed error code (e.g. 'model_not_found', 'insufficient_memory').
  final String? code;

  /// The raw response body or error details map, if available.
  final dynamic details;

  /// The URI of the failed request.
  final Uri? uri;

  const OmlxApiException({
    required this.statusCode,
    required String message,
    this.errorType,
    this.code,
    this.details,
    this.uri,
  }) : super(message);

  /// Whether this error represents an authentication failure (401).
  bool get isUnauthorized => statusCode == 401;

  /// Whether the requested model was not found (404).
  bool get isModelNotFound => statusCode == 404;

  /// Whether the model is currently loading or in conflict state (409).
  bool get isConflict => statusCode == 409;

  /// Whether the model exceeded available memory (507 Insufficient Storage).
  bool get isInsufficientMemory => statusCode == 507;

  @override
  String toString() {
    final buffer = StringBuffer('OmlxApiException (HTTP $statusCode): $message');
    if (code != null) buffer.write(' [code: $code]');
    if (errorType != null) buffer.write(' [type: $errorType]');
    if (uri != null) buffer.write(' at $uri');
    return buffer.toString();
  }
}

/// Exception thrown when network connectivity or socket issues occur.
class OmlxNetworkException extends OmlxException {
  final Object? cause;

  const OmlxNetworkException(super.message, {this.cause});

  @override
  String toString() => cause != null
      ? 'OmlxNetworkException: $message (cause: $cause)'
      : 'OmlxNetworkException: $message';
}

/// Exception thrown when response parsing fails (e.g., invalid JSON or SSE).
class OmlxParsingException extends OmlxException {
  final Object? cause;
  final String? rawData;

  const OmlxParsingException(super.message, {this.cause, this.rawData});

  @override
  String toString() => 'OmlxParsingException: $message';
}
