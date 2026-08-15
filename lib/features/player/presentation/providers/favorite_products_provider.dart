import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../../catalog/domain/entities/catalog_product.dart';
import '../../../catalog/domain/usecases/get_product_by_id.dart';
import 'favorites_provider.dart';

part 'favorite_products_provider.g.dart';

/// Resuelve los productos de favoritos (orden de [favoritesProvider]).
@riverpod
Future<List<CatalogProduct>> favoriteProducts(Ref ref) async {
  final ids = await ref.watch(favoritesProvider.future);
  if (ids.isEmpty) return const [];

  final getById = getIt<GetProductById>();
  final products = <CatalogProduct>[];
  for (final id in ids) {
    try {
      products.add(await getById(id, includeOffers: true));
    } catch (_) {
      // ID huérfano / API fallida: se omite.
    }
  }
  return products;
}
