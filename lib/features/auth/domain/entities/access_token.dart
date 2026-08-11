/// Token de acceso de MercadoLibre obtenido vía el server de SimuCompras.
class AccessToken {
  const AccessToken({
    required this.value,
    required this.tokenType,
    required this.expiresIn,
    required this.expiresAt,
    required this.cached,
  });

  final String value;
  final String tokenType;
  final int expiresIn;
  final DateTime expiresAt;
  final bool cached;

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  /// Authorization header listo para llamadas a ML.
  String get authorizationHeader => '$tokenType $value';
}
