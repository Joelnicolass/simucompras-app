import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_exception.dart';

class ApiClient {
  ApiClient({required String baseUrl, http.Client? httpClient})
      : _baseUrl = baseUrl.replaceAll(RegExp(r'/$'), ''),
        _httpClient = httpClient ?? http.Client();

  final String _baseUrl;
  final http.Client _httpClient;

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    final decoded = await _getDecoded(
      path,
      headers: headers,
      queryParameters: queryParameters,
    );
    if (decoded is! Map<String, dynamic>) {
      throw const ParseException('Se esperaba un objeto JSON');
    }
    return decoded;
  }

  Future<List<dynamic>> getList(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    final decoded = await _getDecoded(
      path,
      headers: headers,
      queryParameters: queryParameters,
    );
    if (decoded is! List<dynamic>) {
      throw const ParseException('Se esperaba un array JSON');
    }
    return decoded;
  }

  Future<dynamic> _getDecoded(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    final uri = Uri.parse('$_baseUrl$path').replace(
      queryParameters: queryParameters == null || queryParameters.isEmpty
          ? null
          : queryParameters,
    );

    late final http.Response response;
    try {
      response = await _httpClient.get(uri, headers: headers);
    } catch (error) {
      throw NetworkException(error.toString());
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw HttpException(response.statusCode, response.body);
    }

    if (response.body.isEmpty) {
      throw const ParseException('Respuesta vacía del servidor');
    }

    try {
      return jsonDecode(response.body);
    } on ApiException {
      rethrow;
    } catch (_) {
      throw const ParseException();
    }
  }

  void close() => _httpClient.close();
}
