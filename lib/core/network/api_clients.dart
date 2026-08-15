import 'api_client.dart';

/// Cliente HTTP hacia el backend de auth de SimuCompras.
class AuthApiClient extends ApiClient {
  AuthApiClient({required super.baseUrl, super.httpClient});
}

/// Cliente HTTP hacia la API de MercadoLibre.
class MercadoLibreApiClient extends ApiClient {
  MercadoLibreApiClient({required super.baseUrl, super.httpClient});
}
