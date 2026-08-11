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

  /// Margen antes del vencimiento real para renovar con anticipación.
  static const validitySkew = Duration(seconds: 60);

  bool get isExpired =>
      DateTime.now().toUtc().isAfter(expiresAt.toUtc());

  bool get isValid =>
      value.isNotEmpty &&
      DateTime.now().toUtc().isBefore(expiresAt.toUtc().subtract(validitySkew));

  /// Authorization header listo para llamadas a ML.
  String get authorizationHeader => '$tokenType $value';
}
