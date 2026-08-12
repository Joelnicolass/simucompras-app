sealed class CatalogFailure implements Exception {
  const CatalogFailure([this.message]);

  final String? message;

  @override
  String toString() => message ?? runtimeType.toString();
}

class CatalogUnavailable extends CatalogFailure {
  const CatalogUnavailable([super.message, this.cause]);

  final Object? cause;
}

class ProductNotFound extends CatalogFailure {
  const ProductNotFound([super.message = 'Producto no encontrado']);
}

class CategoryNotFound extends CatalogFailure {
  const CategoryNotFound([super.message = 'Categoría no encontrada']);
}

class InvalidSearchQuery extends CatalogFailure {
  const InvalidSearchQuery([super.message = 'Query de búsqueda inválida']);
}
