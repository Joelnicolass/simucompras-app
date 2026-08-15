/// Errores de red / API no tipados al dominio.
sealed class ApiException implements Exception {
  const ApiException(this.message);

  final String message;

  @override
  String toString() => message;
}

class NetworkException extends ApiException {
  const NetworkException([super.message = 'Error de red']);
}

class HttpException extends ApiException {
  const HttpException(this.statusCode, [String? message])
      : super(message ?? 'HTTP $statusCode');

  final int statusCode;
}

class ParseException extends ApiException {
  const ParseException([super.message = 'Respuesta inválida del servidor']);
}
