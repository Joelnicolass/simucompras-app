import '../entities/catalog_product.dart';
import '../errors/catalog_failure.dart';
import '../repositories/catalog_repository.dart';

class SearchProducts {
  const SearchProducts(this._repository);

  final CatalogRepository _repository;

  Future<ProductSearchPage> call(ProductSearchParams params) {
    final hasQuery = params.query?.trim().isNotEmpty ?? false;
    final hasCategory = params.categoryId?.trim().isNotEmpty ?? false;
    if (!hasQuery && !hasCategory) {
      throw const InvalidSearchQuery(
        'Indicá un texto de búsqueda y/o una categoría',
      );
    }

    final limit = params.limit.clamp(1, 50);
    final offset = params.offset < 0 ? 0 : params.offset;

    return _repository.searchProducts(
      ProductSearchParams(
        query: params.query?.trim(),
        categoryId: params.categoryId?.trim(),
        limit: limit,
        offset: offset,
        includeOffers: params.includeOffers,
      ),
    );
  }
}
