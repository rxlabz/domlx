import 'dart:async';
import 'dart:convert';
import 'package:domlx/domlx.dart';
import 'package:domlx/src/client/http_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('OmlxHttpClient Tests', () {
    test('normalizes baseUrl trailing slash', () {
      final clientWithSlash = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000/'),
        client: MockClient((req) async => http.Response('{}', 200)),
      );
      expect(clientWithSlash.baseUrl.toString(), 'http://localhost:8000');
    });

    test('builds uri with and without query parameters and leading slashes', () async {
      late Uri capturedUri;
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000/api'),
        client: MockClient((req) async {
          capturedUri = req.url;
          return http.Response('{"ok": true}', 200);
        }),
      );

      await client.get('v1/models', queryParameters: {'limit': 10, 'detail': true});
      expect(capturedUri.toString(), 'http://localhost:8000/api/v1/models?limit=10&detail=true');

      await client.get('/v1/status');
      expect(capturedUri.toString(), 'http://localhost:8000/api/v1/status');
    });

    test('headers: apiKey (empty vs populated) and custom defaultHeaders', () async {
      late Map<String, String> capturedHeaders;
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        apiKey: 'secret-key',
        defaultHeaders: {'X-Custom-Client': 'domlx-test'},
        client: MockClient((req) async {
          capturedHeaders = req.headers;
          return http.Response('{}', 200);
        }),
      );

      await client.get('/test', headers: {'X-Request-Id': 'req-1'});
      expect(capturedHeaders['Authorization'], 'Bearer secret-key');
      expect(capturedHeaders['X-Custom-Client'], 'domlx-test');
      expect(capturedHeaders['X-Request-Id'], 'req-1');
      expect(capturedHeaders['Content-Type'], 'application/json');

      final emptyKeyClient = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        apiKey: '',
        client: MockClient((req) async {
          capturedHeaders = req.headers;
          return http.Response('{}', 200);
        }),
      );
      await emptyKeyClient.get('/test');
      expect(capturedHeaders.containsKey('Authorization'), isFalse);
    });

    test('_handleResponse returns null for empty response body', () async {
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response('', 204)),
      );
      final res = await client.get('/empty');
      expect(res, isNull);
    });

    test('_handleResponse throws OmlxParsingException on invalid 200 JSON', () async {
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response('<html>Not JSON</html>', 200)),
      );
      expect(
        () => client.get('/invalid-json'),
        throwsA(isA<OmlxParsingException>().having((e) => e.rawData, 'rawData', '<html>Not JSON</html>')),
      );
    });

    test('_handleErrorResponse handles various error payload structures', () async {
      // 1. Generic message property
      var client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response(jsonEncode({'message': 'Generic error'}), 400)),
      );
      expect(
        () => client.get('/err'),
        throwsA(isA<OmlxApiException>().having((e) => e.message, 'message', 'Generic error')),
      );

      // 2. Non-JSON plain text body
      client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response('Gateway Time-out', 504)),
      );
      expect(
        () => client.get('/err'),
        throwsA(isA<OmlxApiException>().having((e) => e.message, 'message', 'Gateway Time-out')),
      );

      // 3. Empty error body
      client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response('', 500)),
      );
      expect(
        () => client.get('/err'),
        throwsA(isA<OmlxApiException>().having((e) => e.message, 'message', 'HTTP 500 error from oMLX')),
      );
    });

    test('timeout handling for get, post, postBinary, postMultipart, and postStream', () async {
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        timeout: const Duration(milliseconds: 10),
        client: MockClient((req) async {
          await Future.delayed(const Duration(milliseconds: 50));
          return http.Response('{}', 200);
        }),
      );

      expect(() => client.get('/timeout'), throwsA(isA<OmlxNetworkException>()));
      expect(() => client.post('/timeout', body: {}), throwsA(isA<OmlxNetworkException>()));
      expect(() => client.postBinary('/timeout'), throwsA(isA<OmlxNetworkException>()));
      expect(
        () => client.postMultipart('/timeout', files: [http.MultipartFile.fromString('f', 'data')]),
        throwsA(isA<OmlxNetworkException>()),
      );

      final streamClient = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        timeout: const Duration(milliseconds: 10),
        client: MockClient.streaming((req, stream) async {
          await Future.delayed(const Duration(milliseconds: 50));
          return http.StreamedResponse(const Stream.empty(), 200);
        }),
      );
      expect(() => streamClient.postStream('/timeout').toList(), throwsA(isA<OmlxNetworkException>()));
    });

    test('network exceptions for get, post, postBinary, and postMultipart', () async {
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => throw Exception('Socket failed')),
      );

      expect(() => client.get('/fail'), throwsA(isA<OmlxNetworkException>()));
      expect(() => client.post('/fail'), throwsA(isA<OmlxNetworkException>()));
      expect(() => client.postBinary('/fail'), throwsA(isA<OmlxNetworkException>()));
      expect(
        () => client.postMultipart('/fail', files: [http.MultipartFile.fromString('f', 'data')]),
        throwsA(isA<OmlxNetworkException>()),
      );

      final streamClient = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => throw Exception('Stream connect error')),
      );
      expect(
        () => streamClient.postStream('/fail', headers: {'X-Stream-Custom': 'val'}).toList(),
        throwsA(isA<OmlxNetworkException>()),
      );
    });

    test('postBinary handles non-2xx status by throwing OmlxApiException', () async {
      final client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient((req) async => http.Response(jsonEncode({'detail': 'TTS voice not found'}), 404)),
      );

      expect(
        () => client.postBinary('/v1/audio/speech', body: {'voice': 'unknown'}),
        throwsA(
          isA<OmlxApiException>()
              .having((e) => e.statusCode, 'statusCode', 404)
              .having((e) => e.message, 'message', 'TTS voice not found'),
        ),
      );
    });

    test('postStream handles initial non-2xx status and invalid SSE json data', () async {
      // 1. Initial non-2xx status code
      var client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient.streaming((req, bodyStream) async {
          return http.StreamedResponse(
            Stream.value(utf8.encode(jsonEncode({'detail': 'Model rate limit'}))),
            429,
          );
        }),
      );

      expect(
        () => client.postStream('/v1/chat/completions').toList(),
        throwsA(
          isA<OmlxApiException>()
              .having((e) => e.statusCode, 'statusCode', 429)
              .having((e) => e.message, 'message', 'Model rate limit'),
        ),
      );

      // 2. Invalid JSON inside data: SSE line
      client = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: MockClient.streaming((req, bodyStream) async {
          return http.StreamedResponse(
            Stream.value(utf8.encode('data: {invalid json}\n\n')),
            200,
          );
        }),
      );

      expect(
        () => client.postStream('/v1/chat/completions').toList(),
        throwsA(isA<OmlxParsingException>()),
      );
    });

    test('close closes internal client and does not close external client', () {
      final internalClient = OmlxHttpClient(baseUrl: Uri.parse('http://localhost:8000'));
      expect(() => internalClient.close(), returnsNormally);

      final externalHttp = http.Client();
      final externalClient = OmlxHttpClient(
        baseUrl: Uri.parse('http://localhost:8000'),
        client: externalHttp,
      );
      expect(() => externalClient.close(), returnsNormally);
      externalHttp.close();
    });
  });
}
