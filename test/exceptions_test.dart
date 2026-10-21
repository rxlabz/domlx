import 'package:domlx/domlx.dart';
import 'package:test/test.dart';

void main() {
  group('Exceptions Tests', () {
    test('OmlxException base message', () {
      const e = OmlxNetworkException('test network');
      expect(e, isA<OmlxException>());
      expect(e.message, 'test network');
    });

    test('OmlxApiException status flags and code/errorType/uri formatting', () {
      final e401 = OmlxApiException(
        statusCode: 401,
        message: 'Unauthorized',
        code: 'invalid_api_key',
        errorType: 'auth_error',
        uri: Uri.parse('http://localhost:8000/v1/models'),
      );
      expect(e401.isUnauthorized, isTrue);
      expect(e401.isModelNotFound, isFalse);
      expect(e401.isConflict, isFalse);
      expect(e401.isInsufficientMemory, isFalse);
      expect(
        e401.toString(),
        'OmlxApiException (HTTP 401): Unauthorized [code: invalid_api_key] [type: auth_error] at http://localhost:8000/v1/models',
      );

      final e404 = OmlxApiException(statusCode: 404, message: 'Model missing');
      expect(e404.isModelNotFound, isTrue);
      expect(e404.isUnauthorized, isFalse);
      expect(e404.toString(), 'OmlxApiException (HTTP 404): Model missing');

      final e409 = OmlxApiException(statusCode: 409, message: 'Model busy');
      expect(e409.isConflict, isTrue);

      final e507 = OmlxApiException(statusCode: 507, message: 'No memory');
      expect(e507.isInsufficientMemory, isTrue);

      final eMemoryCode = OmlxApiException(
        statusCode: 500,
        message: 'No memory',
        code: 'insufficient_memory',
      );
      expect(eMemoryCode.isInsufficientMemory, isTrue);
    });

    test('OmlxNetworkException with and without cause', () {
      const netWithoutCause = OmlxNetworkException('Failed connection');
      expect(netWithoutCause.cause, isNull);
      expect(netWithoutCause.toString(), 'OmlxNetworkException: Failed connection');

      final inner = Exception('Socket closed');
      final netWithCause = OmlxNetworkException('Failed connection', cause: inner);
      expect(netWithCause.cause, inner);
      expect(
        netWithCause.toString(),
        'OmlxNetworkException: Failed connection (cause: Exception: Socket closed)',
      );
    });

    test('OmlxParsingException with details', () {
      final cause = const FormatException('Invalid JSON');
      final parseEx = OmlxParsingException(
        'JSON syntax error',
        cause: cause,
        rawData: '{bad json',
      );
      expect(parseEx.cause, cause);
      expect(parseEx.rawData, '{bad json');
      expect(parseEx.toString(), 'OmlxParsingException: JSON syntax error');
    });
  });
}
