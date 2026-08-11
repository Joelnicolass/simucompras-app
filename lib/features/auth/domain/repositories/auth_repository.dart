import '../entities/access_token.dart';

abstract interface class AuthRepository {
  Future<AccessToken> getAccessToken();
}
