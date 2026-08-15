// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      pictureUrl: json['picture'] as String?,
      totalItemsInThisCategory: (json['total_items_in_this_category'] as num?)
          ?.toInt(),
      pathFromRoot: json['path_from_root'] == null
          ? const []
          : _pathFromJson(json['path_from_root']),
      children: json['children_categories'] == null
          ? const []
          : _childrenFromJson(json['children_categories']),
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.pictureUrl,
      'total_items_in_this_category': instance.totalItemsInThisCategory,
      'path_from_root': instance.pathFromRoot,
      'children_categories': instance.children,
    };

_CategoryPathNodeModel _$CategoryPathNodeModelFromJson(
  Map<String, dynamic> json,
) => _CategoryPathNodeModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
);

Map<String, dynamic> _$CategoryPathNodeModelToJson(
  _CategoryPathNodeModel instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
