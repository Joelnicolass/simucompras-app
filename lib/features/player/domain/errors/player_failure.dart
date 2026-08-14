sealed class PlayerFailure implements Exception {
  const PlayerFailure();
}

class InsufficientPesos extends PlayerFailure {
  const InsufficientPesos({
    required this.requiredPesos,
    required this.availablePesos,
  });

  final int requiredPesos;
  final int availablePesos;

  @override
  String toString() =>
      'Saldo insuficiente: necesitás \$$requiredPesos, tenés \$$availablePesos.';
}

class PlayerStorageUnavailable extends PlayerFailure {
  const PlayerStorageUnavailable([this.cause]);

  final Object? cause;

  @override
  String toString() => 'No se pudo acceder a los datos del jugador.';
}
