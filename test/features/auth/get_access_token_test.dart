import 'package:flutter_test/flutter_test.dart';
import 'package:simucompras/features/auth/data/mappers/access_token_mapper.dart';
import 'package:simucompras/features/auth/data/models/access_token_model.dart';
import 'package:simucompras/features/auth/domain/entities/access_token.dart';
import 'package:simucompras/features/auth/domain/errors/auth_failure.dart';
import 'package:simucompras/features/auth/domain/repositories/auth_repository.dart';
import 'package:simucompras/features/auth/domain/usecases/get_access_token.dart';

void main() {
  group('AccessTokenModel', () {
    test('parsea el JSON del server y mapea a entity', () {
      final model = AccessTokenModel.fromJson({
        'access_token': 'APP_USR-test',
        'token_type': 'Bearer',
        'expires_in': 100,
        'expires_at': '2026-08-12T01:00:00.000Z',
        'cached': true,
      });

      expect(model.accessToken, 'APP_USR-test');
      expect(model.cached, isTrue);

      final entity = model.toEntity();
      expect(entity.authorizationHeader, 'Bearer APP_USR-test');
      expect(entity.expiresAt.toUtc().toIso8601String(), '2026-08-12T01:00:00.000Z');
    });
  });

  group('GetAccessToken', () {
    test('devuelve el token del repositorio', () async {
      final expected = AccessToken(
        value: 'token',
        tokenType: 'Bearer',
        expiresIn: 10,
        expiresAt: DateTime.utc(2026, 8, 12),
        cached: false,
      );
      final usecase = GetAccessToken(_FakeAuthRepository(expected));

      final result = await usecase();

      expect(result.value, 'token');
    });

    test('falla si el token viene vacío', () async {
      final usecase = GetAccessToken(
        _FakeAuthRepository(
          AccessToken(
            value: '',
            tokenType: 'Bearer',
            expiresIn: 10,
            expiresAt: DateTime.utc(2026, 8, 12),
            cached: false,
          ),
        ),
      );

      expect(() => usecase(), throwsA(isA<InvalidAccessToken>()));
    });
  });
}

class _FakeAuthRepository implements AuthRepository {
  _FakeAuthRepository(this.token);

  final AccessToken token;

  @override
  Future<AccessToken> getAccessToken() async => token;
}
