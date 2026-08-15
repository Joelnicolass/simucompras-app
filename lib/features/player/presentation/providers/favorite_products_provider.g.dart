// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Resuelve los productos de favoritos (orden de [favoritesProvider]).

@ProviderFor(favoriteProducts)
final favoriteProductsProvider = FavoriteProductsProvider._();

/// Resuelve los productos de favoritos (orden de [favoritesProvider]).

final class FavoriteProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CatalogProduct>>,
          List<CatalogProduct>,
          FutureOr<List<CatalogProduct>>
        >
    with
        $FutureModifier<List<CatalogProduct>>,
        $FutureProvider<List<CatalogProduct>> {
  /// Resuelve los productos de favoritos (orden de [favoritesProvider]).
  FavoriteProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteProductsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteProductsHash();

  @$internal
  @override
  $FutureProviderElement<List<CatalogProduct>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CatalogProduct>> create(Ref ref) {
    return favoriteProducts(ref);
  }
}

String _$favoriteProductsHash() => r'f49fae75a09daba3c6dbe2da341e498ac784fded';
