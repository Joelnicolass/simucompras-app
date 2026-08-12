// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Productos de ejemplo para secciones de home / listados.
///
/// keepAlive: las secciones de la home se montan/desmontan al scrollear el
/// ListView; sin esto el provider se descarta y repite la request.
///
/// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
/// o pull-to-refresh sin crear nuevas instancias del family.

@ProviderFor(featuredProducts)
final featuredProductsProvider = FeaturedProductsFamily._();

/// Productos de ejemplo para secciones de home / listados.
///
/// keepAlive: las secciones de la home se montan/desmontan al scrollear el
/// ListView; sin esto el provider se descarta y repite la request.
///
/// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
/// o pull-to-refresh sin crear nuevas instancias del family.

final class FeaturedProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CatalogProduct>>,
          List<CatalogProduct>,
          FutureOr<List<CatalogProduct>>
        >
    with
        $FutureModifier<List<CatalogProduct>>,
        $FutureProvider<List<CatalogProduct>> {
  /// Productos de ejemplo para secciones de home / listados.
  ///
  /// keepAlive: las secciones de la home se montan/desmontan al scrollear el
  /// ListView; sin esto el provider se descarta y repite la request.
  ///
  /// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
  /// o pull-to-refresh sin crear nuevas instancias del family.
  FeaturedProductsProvider._({
    required FeaturedProductsFamily super.from,
    required ({String query, int limit}) super.argument,
  }) : super(
         retry: null,
         name: r'featuredProductsProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredProductsHash();

  @override
  String toString() {
    return r'featuredProductsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<CatalogProduct>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CatalogProduct>> create(Ref ref) {
    final argument = this.argument as ({String query, int limit});
    return featuredProducts(ref, query: argument.query, limit: argument.limit);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredProductsHash() => r'f60d2afeeddbded648e812ad9aab592cd1d13195';

/// Productos de ejemplo para secciones de home / listados.
///
/// keepAlive: las secciones de la home se montan/desmontan al scrollear el
/// ListView; sin esto el provider se descarta y repite la request.
///
/// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
/// o pull-to-refresh sin crear nuevas instancias del family.

final class FeaturedProductsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<CatalogProduct>>,
          ({String query, int limit})
        > {
  FeaturedProductsFamily._()
    : super(
        retry: null,
        name: r'featuredProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// Productos de ejemplo para secciones de home / listados.
  ///
  /// keepAlive: las secciones de la home se montan/desmontan al scrollear el
  /// ListView; sin esto el provider se descarta y repite la request.
  ///
  /// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
  /// o pull-to-refresh sin crear nuevas instancias del family.

  FeaturedProductsProvider call({String query = 'smart tv', int limit = 6}) =>
      FeaturedProductsProvider._(
        argument: (query: query, limit: limit),
        from: this,
      );

  @override
  String toString() => r'featuredProductsProvider';
}
