import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';

/// Token de acceso de MercadoLibre obtenido vía el server de SimuCompras.
@freezed
abstract class AccessToken with _$AccessToken {
  const AccessToken._();

  const factory AccessToken({
    required String value,
    required String tokenType,
    required int expiresIn,
    required DateTime expiresAt,
    required bool cached,
  }) = _AccessToken;

  /// Margen antes del vencimiento real para renovar con anticipación.
  static const validitySkew = Duration(seconds: 60);

  bool get isExpired => DateTime.now().toUtc().isAfter(expiresAt.toUtc());

  bool get isValid =>
      value.isNotEmpty &&
      DateTime.now().toUtc().isBefore(expiresAt.toUtc().subtract(validitySkew));

  /// Authorization header listo para llamadas a ML.
  String get authorizationHeader => '$tokenType $value';
}
