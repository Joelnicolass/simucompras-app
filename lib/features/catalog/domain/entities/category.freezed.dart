// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Category {

 String get id; String get name; String? get pictureUrl; int? get totalItemsInThisCategory; List<CategoryPathNode> get pathFromRoot; List<Category> get children;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.totalItemsInThisCategory, totalItemsInThisCategory) || other.totalItemsInThisCategory == totalItemsInThisCategory)&&const DeepCollectionEquality().equals(other.pathFromRoot, pathFromRoot)&&const DeepCollectionEquality().equals(other.children, children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,pictureUrl,totalItemsInThisCategory,const DeepCollectionEquality().hash(pathFromRoot),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Category(id: $id, name: $name, pictureUrl: $pictureUrl, totalItemsInThisCategory: $totalItemsInThisCategory, pathFromRoot: $pathFromRoot, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? pictureUrl, int? totalItemsInThisCategory, List<CategoryPathNode> pathFromRoot, List<Category> children
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? pictureUrl = freezed,Object? totalItemsInThisCategory = freezed,Object? pathFromRoot = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,totalItemsInThisCategory: freezed == totalItemsInThisCategory ? _self.totalItemsInThisCategory : totalItemsInThisCategory // ignore: cast_nullable_to_non_nullable
as int?,pathFromRoot: null == pathFromRoot ? _self.pathFromRoot : pathFromRoot // ignore: cast_nullable_to_non_nullable
as List<CategoryPathNode>,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? pictureUrl,  int? totalItemsInThisCategory,  List<CategoryPathNode> pathFromRoot,  List<Category> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.pictureUrl,_that.totalItemsInThisCategory,_that.pathFromRoot,_that.children);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? pictureUrl,  int? totalItemsInThisCategory,  List<CategoryPathNode> pathFromRoot,  List<Category> children)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.pictureUrl,_that.totalItemsInThisCategory,_that.pathFromRoot,_that.children);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? pictureUrl,  int? totalItemsInThisCategory,  List<CategoryPathNode> pathFromRoot,  List<Category> children)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.pictureUrl,_that.totalItemsInThisCategory,_that.pathFromRoot,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _Category extends Category {
  const _Category({required this.id, required this.name, this.pictureUrl, this.totalItemsInThisCategory, final  List<CategoryPathNode> pathFromRoot = const [], final  List<Category> children = const []}): _pathFromRoot = pathFromRoot,_children = children,super._();
  

@override final  String id;
@override final  String name;
@override final  String? pictureUrl;
@override final  int? totalItemsInThisCategory;
 final  List<CategoryPathNode> _pathFromRoot;
@override@JsonKey() List<CategoryPathNode> get pathFromRoot {
  if (_pathFromRoot is EqualUnmodifiableListView) return _pathFromRoot;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pathFromRoot);
}

 final  List<Category> _children;
@override@JsonKey() List<Category> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.totalItemsInThisCategory, totalItemsInThisCategory) || other.totalItemsInThisCategory == totalItemsInThisCategory)&&const DeepCollectionEquality().equals(other._pathFromRoot, _pathFromRoot)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,pictureUrl,totalItemsInThisCategory,const DeepCollectionEquality().hash(_pathFromRoot),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Category(id: $id, name: $name, pictureUrl: $pictureUrl, totalItemsInThisCategory: $totalItemsInThisCategory, pathFromRoot: $pathFromRoot, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? pictureUrl, int? totalItemsInThisCategory, List<CategoryPathNode> pathFromRoot, List<Category> children
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? pictureUrl = freezed,Object? totalItemsInThisCategory = freezed,Object? pathFromRoot = null,Object? children = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,totalItemsInThisCategory: freezed == totalItemsInThisCategory ? _self.totalItemsInThisCategory : totalItemsInThisCategory // ignore: cast_nullable_to_non_nullable
as int?,pathFromRoot: null == pathFromRoot ? _self._pathFromRoot : pathFromRoot // ignore: cast_nullable_to_non_nullable
as List<CategoryPathNode>,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

/// @nodoc
mixin _$CategoryPathNode {

 String get id; String get name;
/// Create a copy of CategoryPathNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPathNodeCopyWith<CategoryPathNode> get copyWith => _$CategoryPathNodeCopyWithImpl<CategoryPathNode>(this as CategoryPathNode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPathNode&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CategoryPathNode(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryPathNodeCopyWith<$Res>  {
  factory $CategoryPathNodeCopyWith(CategoryPathNode value, $Res Function(CategoryPathNode) _then) = _$CategoryPathNodeCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CategoryPathNodeCopyWithImpl<$Res>
    implements $CategoryPathNodeCopyWith<$Res> {
  _$CategoryPathNodeCopyWithImpl(this._self, this._then);

  final CategoryPathNode _self;
  final $Res Function(CategoryPathNode) _then;

/// Create a copy of CategoryPathNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPathNode].
extension CategoryPathNodePatterns on CategoryPathNode {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPathNode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPathNode() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPathNode value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPathNode():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPathNode value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPathNode() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPathNode() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _CategoryPathNode():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPathNode() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryPathNode implements CategoryPathNode {
  const _CategoryPathNode({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of CategoryPathNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPathNodeCopyWith<_CategoryPathNode> get copyWith => __$CategoryPathNodeCopyWithImpl<_CategoryPathNode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPathNode&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CategoryPathNode(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryPathNodeCopyWith<$Res> implements $CategoryPathNodeCopyWith<$Res> {
  factory _$CategoryPathNodeCopyWith(_CategoryPathNode value, $Res Function(_CategoryPathNode) _then) = __$CategoryPathNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CategoryPathNodeCopyWithImpl<$Res>
    implements _$CategoryPathNodeCopyWith<$Res> {
  __$CategoryPathNodeCopyWithImpl(this._self, this._then);

  final _CategoryPathNode _self;
  final $Res Function(_CategoryPathNode) _then;

/// Create a copy of CategoryPathNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CategoryPathNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
