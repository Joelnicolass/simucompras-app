import '../../../../core/network/api_client.dart';
import '../../domain/datasources/auth_remote_datasource.dart';
import '../../domain/entities/access_token.dart';
import '../mappers/access_token_mapper.dart';
import '../models/access_token_model.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl(this._client);

  final ApiClient _client;

  static const _path = '/api/auth/token';

  @override
  Future<AccessToken> fetchAccessToken() async {
    final json = await _client.get(_path);
    final model = AccessTokenModel.fromJson(json);
    return model.toEntity();
  }
}
