import '../../../../core/network/api_exception.dart';
import '../../domain/datasources/auth_local_datasource.dart';
import '../../domain/datasources/auth_remote_datasource.dart';
import '../../domain/entities/access_token.dart';
import '../../domain/errors/auth_failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remote, this._local);

  final AuthRemoteDatasource _remote;
  final AuthLocalDatasource _local;

  @override
  Future<AccessToken> getAccessToken() async {
    try {
      final cached = await _local.readAccessToken();
      if (cached != null && cached.isValid) {
        return cached;
      }

      final fresh = await _remote.fetchAccessToken();
      await _local.saveAccessToken(fresh);
      return fresh;
    } on ApiException catch (error) {
      throw AuthUnavailable(error.message, error);
    } on AuthFailure {
      rethrow;
    } catch (error) {
      throw AuthUnavailable('Error inesperado al obtener el token', error);
    }
  }
}
