sealed class AuthFailure implements Exception {
  const AuthFailure([this.message]);

  final String? message;

  @override
  String toString() => message ?? runtimeType.toString();
}

/// No se pudo contactar o interpretar el server de auth.
class AuthUnavailable extends AuthFailure {
  const AuthUnavailable([super.message, this.cause]);

  final Object? cause;
}

/// El token recibido no es usable.
class InvalidAccessToken extends AuthFailure {
  const InvalidAccessToken([super.message]);
}
