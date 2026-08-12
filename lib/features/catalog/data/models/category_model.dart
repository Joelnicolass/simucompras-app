class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.name,
    this.pictureUrl,
    this.totalItemsInThisCategory,
    this.pathFromRoot = const [],
    this.children = const [],
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    final path = (json['path_from_root'] as List? ?? const [])
        .whereType<Map>()
        .map(
          (n) => CategoryPathNodeModel(
            id: n['id'] as String? ?? '',
            name: n['name'] as String? ?? '',
          ),
        )
        .where((n) => n.id.isNotEmpty)
        .toList(growable: false);

    final children = (json['children_categories'] as List? ?? const [])
        .whereType<Map>()
        .map((c) => CategoryModel.fromJson(Map<String, dynamic>.from(c)))
        .where((c) => c.id.isNotEmpty)
        .toList(growable: false);

    return CategoryModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      pictureUrl: json['picture'] as String?,
      totalItemsInThisCategory:
          (json['total_items_in_this_category'] as num?)?.toInt(),
      pathFromRoot: path,
      children: children,
    );
  }

  final String id;
  final String name;
  final String? pictureUrl;
  final int? totalItemsInThisCategory;
  final List<CategoryPathNodeModel> pathFromRoot;
  final List<CategoryModel> children;
}

class CategoryPathNodeModel {
  const CategoryPathNodeModel({required this.id, required this.name});

  final String id;
  final String name;
}
