import '../entities/category.dart';
import '../repositories/catalog_repository.dart';

class GetRootCategories {
  const GetRootCategories(this._repository);

  final CatalogRepository _repository;

  Future<List<Category>> call() => _repository.getRootCategories();
}
