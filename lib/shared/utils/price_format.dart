/// Formato de precios al estilo MeLi (miles con punto).
abstract final class PriceFormat {
  static String ars(double price, {String currencySymbol = r'$'}) {
    final rounded = price.round();
    final digits = rounded.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < digits.length; i++) {
      final reverseIndex = digits.length - i;
      buffer.write(digits[i]);
      if (reverseIndex > 1 && reverseIndex % 3 == 1) {
        buffer.write('.');
      }
    }
    return '$currencySymbol ${buffer.toString()}';
  }

  static String? discountPercent(double? original, double price) {
    if (original == null || original <= 0 || original <= price) return null;
    final percent = (((original - price) / original) * 100).round();
    if (percent <= 0) return null;
    return '$percent% OFF';
  }

  /// Ej: "en 12x $ 15.699" (cuotas simples, sin interés declarado).
  static String installmentsArs(double price, {int count = 12}) {
    if (price <= 0 || count <= 0) return '';
    return 'en ${count}x ${ars(price / count)}';
  }
}
