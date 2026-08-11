import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/access_token.dart';
import '../../domain/usecases/get_access_token.dart';

part 'access_token_provider.g.dart';

/// Token de MercadoLibre desde el backend de SimuCompras (lectura async).
@riverpod
Future<AccessToken> accessToken(Ref ref) {
  return getIt<GetAccessToken>()();
}
