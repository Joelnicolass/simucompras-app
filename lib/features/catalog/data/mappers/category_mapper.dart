import '../../domain/entities/category.dart';
import '../models/category_model.dart';

extension CategoryModelMapper on CategoryModel {
  Category toEntity() => Category(
        id: id,
        name: name,
        pictureUrl: pictureUrl,
        totalItemsInThisCategory: totalItemsInThisCategory,
        pathFromRoot: pathFromRoot.map((n) => n.toEntity()).toList(growable: false),
        children: children.map((c) => c.toEntity()).toList(growable: false),
      );
}

extension CategoryPathNodeModelMapper on CategoryPathNodeModel {
  CategoryPathNode toEntity() => CategoryPathNode(id: id, name: name);
}
