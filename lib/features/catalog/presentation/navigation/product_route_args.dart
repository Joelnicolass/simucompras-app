/// Args opcionales al abrir PDP (preview heroine + contexto de categoría).
class ProductRouteArgs {
  const ProductRouteArgs({
    this.imageUrl,
    this.title,
    this.rootCategoryId,
  });

  final String? imageUrl;
  final String? title;

  /// Categoría raíz MLA del listado de origen (browse / favoritos).
  final String? rootCategoryId;

  static ProductRouteArgs? fromExtra(Object? extra) {
    if (extra is ProductRouteArgs) return extra;
    return null;
  }
}
