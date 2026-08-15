import '../entities/access_token.dart';

/// Origen remoto del token de MercadoLibre.
///
/// Vive en domain como contrato; la impl y el DTO están en data.
abstract interface class AuthRemoteDatasource {
  Future<AccessToken> fetchAccessToken();
}
