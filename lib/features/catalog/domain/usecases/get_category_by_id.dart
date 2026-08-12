import '../entities/category.dart';
import '../errors/catalog_failure.dart';
import '../repositories/catalog_repository.dart';

class GetCategoryById {
  const GetCategoryById(this._repository);

  final CatalogRepository _repository;

  Future<Category> call(String categoryId) {
    final id = categoryId.trim();
    if (id.isEmpty) {
      throw const CategoryNotFound('categoryId vacío');
    }
    return _repository.getCategoryById(id);
  }
}
