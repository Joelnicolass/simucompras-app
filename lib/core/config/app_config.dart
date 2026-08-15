/// Configuración transversal de la app.
abstract final class AppConfig {
  /// Backend propio de SimuCompras (auth / proxies del server).
  static const String authApiBaseUrl =
      'https://simucompras-sv-ml-production.up.railway.app';

  /// API pública de MercadoLibre.
  static const String mercadoLibreApiBaseUrl = 'https://api.mercadolibre.com';

  /// Site de MercadoLibre (Argentina).
  static const String mercadoLibreSiteId = 'MLA';
}
