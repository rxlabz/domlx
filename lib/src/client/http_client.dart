import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../exceptions.dart';

/// Internal HTTP and SSE transport layer for the oMLX client.
class OmlxHttpClient {
  /// Base URL of the oMLX server (e.g. `http://localhost:8000`).
  final Uri baseUrl;

  /// Optional Bearer API key.
  final String? apiKey;

  /// Underlying HTTP client.
  final http.Client _client;

  /// Whether this client owns `_client` and should close it.
  final bool _isInternalClient;

  /// Default request timeout.
  final Duration timeout;

  /// Extra custom headers applied to every request.
  final Map<String, String> defaultHeaders;

  OmlxHttpClient({
    required Uri baseUrl,
    this.apiKey,
    http.Client? client,
    this.timeout = const Duration(seconds: 120),
    this.defaultHeaders = const {},
  })  : baseUrl = _normalizeBaseUrl(baseUrl),
        _client = client ?? http.Client(),
        _isInternalClient = client == null;

  static Uri _normalizeBaseUrl(Uri uri) {
    var str = uri.toString();
    if (str.endsWith('/')) {
      str = str.substring(0, str.length - 1);
    }
    return Uri.parse(str);
  }

  Uri _buildUri(String path, [Map<String, dynamic>? queryParameters]) {
    final cleanPath = path.startsWith('/') ? path : '/$path';
    final combined = baseUrl.resolve(cleanPath);
    if (queryParameters == null || queryParameters.isEmpty) {
      return combined;
    }
    return combined.replace(
      queryParameters: queryParameters.map(
        (key, value) => MapEntry(key, value.toString()),
      ),
    );
  }

  Map<String, String> _buildHeaders([Map<String, String>? extra]) {
    final headers = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      ...defaultHeaders,
    };
    if (apiKey != null && apiKey!.isNotEmpty) {
      headers['Authorization'] = 'Bearer $apiKey';
    }
    if (extra != null) {
      headers.addAll(extra);
    }
    return headers;
  }

  /// Sends a GET request and decodes the JSON response.
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final uri = _buildUri(path, queryParameters);
    try {
      final response = await _client
          .get(uri, headers: _buildHeaders(headers))
          .timeout(timeout);
      return _handleResponse(response, uri);
    } on OmlxException {
      rethrow;
    } on TimeoutException catch (e) {
      throw OmlxNetworkException('Request timed out after $timeout for $uri', cause: e);
    } catch (e) {
      throw OmlxNetworkException('Failed to connect to oMLX server at $uri', cause: e);
    }
  }

  /// Sends a POST request with a JSON body and decodes the JSON response.
  Future<dynamic> post(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final uri = _buildUri(path, queryParameters);
    final encodedBody = body != null ? jsonEncode(body) : null;

    try {
      final response = await _client
          .post(
            uri,
            headers: _buildHeaders(headers),
            body: encodedBody,
          )
          .timeout(timeout);
      return _handleResponse(response, uri);
    } on OmlxException {
      rethrow;
    } on TimeoutException catch (e) {
      throw OmlxNetworkException('Request timed out after $timeout for $uri', cause: e);
    } catch (e) {
      throw OmlxNetworkException('Failed to send POST request to $uri', cause: e);
    }
  }

  /// Sends a POST request and returns raw binary bytes (e.g. for audio TTS).
  Future<List<int>> postBinary(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final uri = _buildUri(path, queryParameters);
    final encodedBody = body != null ? jsonEncode(body) : null;

    try {
      final response = await _client
          .post(
            uri,
            headers: _buildHeaders(headers),
            body: encodedBody,
          )
          .timeout(timeout);

      if (response.statusCode < 200 || response.statusCode >= 300) {
        _handleErrorResponse(response.statusCode, response.body, uri);
      }
      return response.bodyBytes;
    } on OmlxException {
      rethrow;
    } on TimeoutException catch (e) {
      throw OmlxNetworkException('Request timed out after $timeout for $uri', cause: e);
    } catch (e) {
      throw OmlxNetworkException('Failed to send binary request to $uri', cause: e);
    }
  }

  /// Sends a multipart form POST request (e.g. for audio STT transcription).
  Future<dynamic> postMultipart(
    String path, {
    required List<int> fileBytes,
    required String filename,
    required String fileField,
    Map<String, String>? fields,
    Map<String, String>? headers,
  }) async {
    final uri = _buildUri(path);

    try {
      final request = http.MultipartRequest('POST', uri);
      final requestHeaders = _buildHeaders(headers);
      // Let MultipartRequest set the boundary Content-Type
      requestHeaders.remove('Content-Type');
      request.headers.addAll(requestHeaders);

      if (fields != null) {
        request.fields.addAll(fields);
      }

      request.files.add(
        http.MultipartFile.fromBytes(
          fileField,
          fileBytes,
          filename: filename,
        ),
      );

      final streamedResponse = await _client.send(request).timeout(timeout);
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(response, uri);
    } on OmlxException {
      rethrow;
    } on TimeoutException catch (e) {
      throw OmlxNetworkException('Multipart request timed out for $uri', cause: e);
    } catch (e) {
      throw OmlxNetworkException('Failed to send multipart request to $uri', cause: e);
    }
  }

  /// Sends a POST request and returns a Stream of parsed JSON objects from Server-Sent Events (SSE).
  Stream<Map<String, dynamic>> postStream(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async* {
    final uri = _buildUri(path, queryParameters);
    final requestHeaders = _buildHeaders({
      'Accept': 'text/event-stream',
      'Cache-Control': 'no-cache',
      ...?headers,
    });

    final request = http.Request('POST', uri)
      ..headers.addAll(requestHeaders);

    if (body != null) {
      request.body = jsonEncode(body);
    }

    http.StreamedResponse streamedResponse;
    try {
      streamedResponse = await _client.send(request);
    } catch (e) {
      throw OmlxNetworkException('Failed to send stream request to $uri', cause: e);
    }

    if (streamedResponse.statusCode < 200 || streamedResponse.statusCode >= 300) {
      final errorBody = await streamedResponse.stream.bytesToString();
      _handleErrorResponse(streamedResponse.statusCode, errorBody, uri);
    }

    final lines = streamedResponse.stream
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;

      // Handle oMLX SSE keep-alive comments (e.g. ": keep-alive")
      if (trimmed.startsWith(':')) {
        continue;
      }

      if (trimmed.startsWith('data:')) {
        final data = trimmed.substring(5).trim();
        if (data == '[DONE]') {
          break;
        }

        try {
          final decoded = jsonDecode(data);
          if (decoded is Map<String, dynamic>) {
            yield decoded;
          }
        } catch (e) {
          throw OmlxParsingException('Failed to parse SSE JSON payload', cause: e, rawData: data);
        }
      }
    }
  }

  dynamic _handleResponse(http.Response response, Uri uri) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      try {
        return jsonDecode(response.body);
      } catch (e) {
        throw OmlxParsingException(
          'Failed to decode JSON response from $uri',
          cause: e,
          rawData: response.body,
        );
      }
    }

    _handleErrorResponse(response.statusCode, response.body, uri);
  }

  Never _handleErrorResponse(int statusCode, String body, Uri uri) {
    String message = 'HTTP $statusCode error from oMLX';
    String? errorType;
    String? code;
    dynamic details;

    if (body.isNotEmpty) {
      try {
        final parsed = jsonDecode(body);
        details = parsed;
        if (parsed is Map<String, dynamic>) {
          if (parsed['error'] is Map<String, dynamic>) {
            final err = parsed['error'] as Map<String, dynamic>;
            message = err['message'] as String? ?? message;
            errorType = err['type'] as String?;
            code = err['code'] as String?;
          } else if (parsed['detail'] != null) {
            message = parsed['detail'].toString();
          } else if (parsed['message'] != null) {
            message = parsed['message'].toString();
          }
        }
      } catch (_) {
        message = body;
      }
    }

    throw OmlxApiException(
      statusCode: statusCode,
      message: message,
      errorType: errorType,
      code: code,
      details: details,
      uri: uri,
    );
  }

  /// Closes the HTTP client if it was created internally.
  void close() {
    if (_isInternalClient) {
      _client.close();
    }
  }
}
