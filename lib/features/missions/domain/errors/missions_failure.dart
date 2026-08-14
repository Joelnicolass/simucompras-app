sealed class MissionsFailure implements Exception {
  const MissionsFailure();
}

class MissionsStorageUnavailable extends MissionsFailure {
  const MissionsStorageUnavailable([this.cause]);
  final Object? cause;

  @override
  String toString() => 'No se pudo acceder a las misiones.';
}
