/// Args opcionales al abrir PDP (preview para heroine mientras carga el detalle).
class ProductRouteArgs {
  const ProductRouteArgs({this.imageUrl, this.title});

  final String? imageUrl;
  final String? title;

  static ProductRouteArgs? fromExtra(Object? extra) {
    if (extra is ProductRouteArgs) return extra;
    return null;
  }
}
