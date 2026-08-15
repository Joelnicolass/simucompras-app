/// Resultado de revender una unidad del inventario.
class SellResult {
  const SellResult({
    required this.creditedPesos,
    required this.productTitle,
  });

  final int creditedPesos;
  final String productTitle;
}
