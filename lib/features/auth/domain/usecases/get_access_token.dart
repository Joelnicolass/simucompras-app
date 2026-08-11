import '../entities/access_token.dart';
import '../errors/auth_failure.dart';
import '../repositories/auth_repository.dart';

/// Obtiene un token válido (cache local mientras no venza, o red).
class GetAccessToken {
  const GetAccessToken(this._repository);

  final AuthRepository _repository;

  Future<AccessToken> call() async {
    final token = await _repository.getAccessToken();
    if (token.value.isEmpty) {
      throw const InvalidAccessToken('access_token vacío');
    }
    return token;
  }
}
