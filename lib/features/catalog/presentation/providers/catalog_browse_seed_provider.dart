import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'catalog_browse_seed_provider.g.dart';

/// Seed de variedad para listados destacados (home, etc.).
///
/// Cambia al iniciar la app (valor inicial) y al hacer pull-to-refresh
/// vía [reshuffle]. Los providers que lo `watch`ean vuelven a pedir datos.
@Riverpod(keepAlive: true)
class CatalogBrowseSeed extends _$CatalogBrowseSeed {
  @override
  int build() => DateTime.now().microsecondsSinceEpoch;

  void reshuffle() {
    state = DateTime.now().microsecondsSinceEpoch ^ Random().nextInt(1 << 30);
  }
}
