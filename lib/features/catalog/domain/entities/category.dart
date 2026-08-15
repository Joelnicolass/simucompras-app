import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const Category._();

  const factory Category({
    required String id,
    required String name,
    String? pictureUrl,
    int? totalItemsInThisCategory,
    @Default([]) List<CategoryPathNode> pathFromRoot,
    @Default([]) List<Category> children,
  }) = _Category;

  bool get isLeaf => children.isEmpty;
}

@freezed
abstract class CategoryPathNode with _$CategoryPathNode {
  const factory CategoryPathNode({
    required String id,
    required String name,
  }) = _CategoryPathNode;
}
