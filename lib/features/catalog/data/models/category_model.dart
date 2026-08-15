import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

/// DTO de categoría (`/sites/{site}/categories` y `/categories/{id}`).
@freezed
abstract class CategoryModel with _$CategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryModel({
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'picture') String? pictureUrl,
    int? totalItemsInThisCategory,
    @JsonKey(fromJson: _pathFromJson)
    @Default([])
    List<CategoryPathNodeModel> pathFromRoot,
    @JsonKey(name: 'children_categories', fromJson: _childrenFromJson)
    @Default([])
    List<CategoryModel> children,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

List<CategoryPathNodeModel> _pathFromJson(Object? raw) {
  if (raw is! List) return const [];
  return raw
      .whereType<Map>()
      .map(
        (n) => CategoryPathNodeModel.fromJson(Map<String, dynamic>.from(n)),
      )
      .where((n) => n.id.isNotEmpty)
      .toList(growable: false);
}

List<CategoryModel> _childrenFromJson(Object? raw) {
  if (raw is! List) return const [];
  return raw
      .whereType<Map>()
      .map((c) => CategoryModel.fromJson(Map<String, dynamic>.from(c)))
      .where((c) => c.id.isNotEmpty)
      .toList(growable: false);
}

@freezed
abstract class CategoryPathNodeModel with _$CategoryPathNodeModel {
  const factory CategoryPathNodeModel({
    @Default('') String id,
    @Default('') String name,
  }) = _CategoryPathNodeModel;

  factory CategoryPathNodeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryPathNodeModelFromJson(json);
}
