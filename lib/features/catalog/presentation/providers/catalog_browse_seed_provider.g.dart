// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_browse_seed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Seed de variedad para listados destacados (home, etc.).
///
/// Cambia al iniciar la app (valor inicial) y al hacer pull-to-refresh
/// vía [reshuffle]. Los providers que lo `watch`ean vuelven a pedir datos.

@ProviderFor(CatalogBrowseSeed)
final catalogBrowseSeedProvider = CatalogBrowseSeedProvider._();

/// Seed de variedad para listados destacados (home, etc.).
///
/// Cambia al iniciar la app (valor inicial) y al hacer pull-to-refresh
/// vía [reshuffle]. Los providers que lo `watch`ean vuelven a pedir datos.
final class CatalogBrowseSeedProvider
    extends $NotifierProvider<CatalogBrowseSeed, int> {
  /// Seed de variedad para listados destacados (home, etc.).
  ///
  /// Cambia al iniciar la app (valor inicial) y al hacer pull-to-refresh
  /// vía [reshuffle]. Los providers que lo `watch`ean vuelven a pedir datos.
  CatalogBrowseSeedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogBrowseSeedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogBrowseSeedHash();

  @$internal
  @override
  CatalogBrowseSeed create() => CatalogBrowseSeed();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$catalogBrowseSeedHash() => r'c7c2b288c7bd398db6e512bf283ca4463e5697b9';

/// Seed de variedad para listados destacados (home, etc.).
///
/// Cambia al iniciar la app (valor inicial) y al hacer pull-to-refresh
/// vía [reshuffle]. Los providers que lo `watch`ean vuelven a pedir datos.

abstract class _$CatalogBrowseSeed extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
