class Category {
  const Category({
    required this.id,
    required this.name,
    this.pictureUrl,
    this.totalItemsInThisCategory,
    this.pathFromRoot = const [],
    this.children = const [],
  });

  final String id;
  final String name;
  final String? pictureUrl;
  final int? totalItemsInThisCategory;
  final List<CategoryPathNode> pathFromRoot;
  final List<Category> children;

  bool get isLeaf => children.isEmpty;
}

class CategoryPathNode {
  const CategoryPathNode({required this.id, required this.name});

  final String id;
  final String name;
}
