import '../entities/access_token.dart';

/// Persistencia local del token (p. ej. SharedPreferences).
abstract interface class AuthLocalDatasource {
  Future<AccessToken?> readAccessToken();

  Future<void> saveAccessToken(AccessToken token);

  Future<void> clearAccessToken();
}
