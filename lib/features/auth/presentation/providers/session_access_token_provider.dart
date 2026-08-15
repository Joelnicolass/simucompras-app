import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/access_token.dart';
import '../../domain/usecases/get_access_token.dart';

part 'session_access_token_provider.g.dart';

/// Sesión global del token ML.
///
/// KeepAlive: se mantiene en memoria durante la vida de la app.
/// La validez a lo largo de reinicios la resuelve el repository vía
/// SharedPreferences.
@Riverpod(keepAlive: true)
Future<AccessToken> sessionAccessToken(Ref ref) {
  return getIt<GetAccessToken>()();
}
