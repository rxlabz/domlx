/// Base exception for all errors thrown by the oMLX client library.
sealed class OmlxException implements Exception {
  /// The error message describing this exception.
  final String message;

  /// Creates an [OmlxException] with the given [message].
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

  /// Creates an [OmlxApiException] instance.
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

  /// Whether the model exceeded available memory (507 Insufficient Storage or insufficient_memory code).
  bool get isInsufficientMemory =>
      statusCode == 507 || code == 'insufficient_memory';

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
  /// The underlying error or exception that caused this failure, if available.
  final Object? cause;

  /// Creates an [OmlxNetworkException] instance.
  const OmlxNetworkException(super.message, {this.cause});

  @override
  String toString() => cause != null
      ? 'OmlxNetworkException: $message (cause: $cause)'
      : 'OmlxNetworkException: $message';
}

/// Exception thrown when response parsing fails (e.g., invalid JSON or SSE).
class OmlxParsingException extends OmlxException {
  /// The underlying error or exception that caused parsing to fail, if available.
  final Object? cause;

  /// The raw string data that could not be parsed, if available.
  final String? rawData;

  /// Creates an [OmlxParsingException] instance.
  const OmlxParsingException(super.message, {this.cause, this.rawData});

  @override
  String toString() => 'OmlxParsingException: $message';
}
