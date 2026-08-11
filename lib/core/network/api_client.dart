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
  }) async {
    final uri = Uri.parse('$_baseUrl$path');

    late final http.Response response;
    try {
      response = await _httpClient.get(uri, headers: headers);
    } catch (error) {
      throw NetworkException(error.toString());
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw HttpException(response.statusCode, response.body);
    }

    try {
      final decoded = jsonDecode(response.body);
      if (decoded is! Map<String, dynamic>) {
        throw const ParseException();
      }
      return decoded;
    } on ApiException {
      rethrow;
    } catch (_) {
      throw const ParseException();
    }
  }

  void close() => _httpClient.close();
}
