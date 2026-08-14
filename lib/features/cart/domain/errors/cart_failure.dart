sealed class CartFailure implements Exception {
  const CartFailure();
}

class CartEmpty extends CartFailure {
  const CartEmpty();

  @override
  String toString() => 'El carrito está vacío.';
}

class CartStorageUnavailable extends CartFailure {
  const CartStorageUnavailable([this.cause]);

  final Object? cause;

  @override
  String toString() => 'No se pudo acceder al carrito.';
}
