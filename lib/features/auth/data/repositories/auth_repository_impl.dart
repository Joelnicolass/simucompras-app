import '../../../../core/network/api_exception.dart';
import '../../domain/datasources/auth_remote_datasource.dart';
import '../../domain/entities/access_token.dart';
import '../../domain/errors/auth_failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remote);

  final AuthRemoteDatasource _remote;

  @override
  Future<AccessToken> getAccessToken() async {
    try {
      return await _remote.fetchAccessToken();
    } on ApiException catch (error) {
      throw AuthUnavailable(error.message, error);
    } on AuthFailure {
      rethrow;
    } catch (error) {
      throw AuthUnavailable('Error inesperado al obtener el token', error);
    }
  }
}
