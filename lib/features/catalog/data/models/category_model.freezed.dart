// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryModel {

 String get id; String get name;@JsonKey(name: 'picture') String? get pictureUrl; int? get totalItemsInThisCategory;@JsonKey(fromJson: _pathFromJson) List<CategoryPathNodeModel> get pathFromRoot;@JsonKey(name: 'children_categories', fromJson: _childrenFromJson) List<CategoryModel> get children;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.totalItemsInThisCategory, totalItemsInThisCategory) || other.totalItemsInThisCategory == totalItemsInThisCategory)&&const DeepCollectionEquality().equals(other.pathFromRoot, pathFromRoot)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,pictureUrl,totalItemsInThisCategory,const DeepCollectionEquality().hash(pathFromRoot),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, pictureUrl: $pictureUrl, totalItemsInThisCategory: $totalItemsInThisCategory, pathFromRoot: $pathFromRoot, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'picture') String? pictureUrl, int? totalItemsInThisCategory,@JsonKey(fromJson: _pathFromJson) List<CategoryPathNodeModel> pathFromRoot,@JsonKey(name: 'children_categories', fromJson: _childrenFromJson) List<CategoryModel> children
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? pictureUrl = freezed,Object? totalItemsInThisCategory = freezed,Object? pathFromRoot = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,totalItemsInThisCategory: freezed == totalItemsInThisCategory ? _self.totalItemsInThisCategory : totalItemsInThisCategory // ignore: cast_nullable_to_non_nullable
as int?,pathFromRoot: null == pathFromRoot ? _self.pathFromRoot : pathFromRoot // ignore: cast_nullable_to_non_nullable
as List<CategoryPathNodeModel>,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'picture')  String? pictureUrl,  int? totalItemsInThisCategory, @JsonKey(fromJson: _pathFromJson)  List<CategoryPathNodeModel> pathFromRoot, @JsonKey(name: 'children_categories', fromJson: _childrenFromJson)  List<CategoryModel> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'picture')  String? pictureUrl,  int? totalItemsInThisCategory, @JsonKey(fromJson: _pathFromJson)  List<CategoryPathNodeModel> pathFromRoot, @JsonKey(name: 'children_categories', fromJson: _childrenFromJson)  List<CategoryModel> children)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'picture')  String? pictureUrl,  int? totalItemsInThisCategory, @JsonKey(fromJson: _pathFromJson)  List<CategoryPathNodeModel> pathFromRoot, @JsonKey(name: 'children_categories', fromJson: _childrenFromJson)  List<CategoryModel> children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.pictureUrl,_that.totalItemsInThisCategory,_that.pathFromRoot,_that.children);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CategoryModel implements CategoryModel {
  const _CategoryModel({this.id = '', this.name = '', @JsonKey(name: 'picture') this.pictureUrl, this.totalItemsInThisCategory, @JsonKey(fromJson: _pathFromJson) final  List<CategoryPathNodeModel> pathFromRoot = const [], @JsonKey(name: 'children_categories', fromJson: _childrenFromJson) final  List<CategoryModel> children = const []}): _pathFromRoot = pathFromRoot,_children = children;
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'picture') final  String? pictureUrl;
@override final  int? totalItemsInThisCategory;
 final  List<CategoryPathNodeModel> _pathFromRoot;
@override@JsonKey(fromJson: _pathFromJson) List<CategoryPathNodeModel> get pathFromRoot {
  if (_pathFromRoot is EqualUnmodifiableListView) return _pathFromRoot;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pathFromRoot);
}

 final  List<CategoryModel> _children;
@override@JsonKey(name: 'children_categories', fromJson: _childrenFromJson) List<CategoryModel> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.totalItemsInThisCategory, totalItemsInThisCategory) || other.totalItemsInThisCategory == totalItemsInThisCategory)&&const DeepCollectionEquality().equals(other._pathFromRoot, _pathFromRoot)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,pictureUrl,totalItemsInThisCategory,const DeepCollectionEquality().hash(_pathFromRoot),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, pictureUrl: $pictureUrl, totalItemsInThisCategory: $totalItemsInThisCategory, pathFromRoot: $pathFromRoot, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'picture') String? pictureUrl, int? totalItemsInThisCategory,@JsonKey(fromJson: _pathFromJson) List<CategoryPathNodeModel> pathFromRoot,@JsonKey(name: 'children_categories', fromJson: _childrenFromJson) List<CategoryModel> children
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? pictureUrl = freezed,Object? totalItemsInThisCategory = freezed,Object? pathFromRoot = null,Object? children = null,}) {
  return _then(_CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,totalItemsInThisCategory: freezed == totalItemsInThisCategory ? _self.totalItemsInThisCategory : totalItemsInThisCategory // ignore: cast_nullable_to_non_nullable
as int?,pathFromRoot: null == pathFromRoot ? _self._pathFromRoot : pathFromRoot // ignore: cast_nullable_to_non_nullable
as List<CategoryPathNodeModel>,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}


/// @nodoc
mixin _$CategoryPathNodeModel {

 String get id; String get name;
/// Create a copy of CategoryPathNodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPathNodeModelCopyWith<CategoryPathNodeModel> get copyWith => _$CategoryPathNodeModelCopyWithImpl<CategoryPathNodeModel>(this as CategoryPathNodeModel, _$identity);

  /// Serializes this CategoryPathNodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPathNodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CategoryPathNodeModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryPathNodeModelCopyWith<$Res>  {
  factory $CategoryPathNodeModelCopyWith(CategoryPathNodeModel value, $Res Function(CategoryPathNodeModel) _then) = _$CategoryPathNodeModelCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CategoryPathNodeModelCopyWithImpl<$Res>
    implements $CategoryPathNodeModelCopyWith<$Res> {
  _$CategoryPathNodeModelCopyWithImpl(this._self, this._then);

  final CategoryPathNodeModel _self;
  final $Res Function(CategoryPathNodeModel) _then;

/// Create a copy of CategoryPathNodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPathNodeModel].
extension CategoryPathNodeModelPatterns on CategoryPathNodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPathNodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPathNodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPathNodeModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPathNodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPathNodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPathNodeModel() when $default != null:
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
case _CategoryPathNodeModel() when $default != null:
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
case _CategoryPathNodeModel():
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
case _CategoryPathNodeModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPathNodeModel implements CategoryPathNodeModel {
  const _CategoryPathNodeModel({this.id = '', this.name = ''});
  factory _CategoryPathNodeModel.fromJson(Map<String, dynamic> json) => _$CategoryPathNodeModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;

/// Create a copy of CategoryPathNodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPathNodeModelCopyWith<_CategoryPathNodeModel> get copyWith => __$CategoryPathNodeModelCopyWithImpl<_CategoryPathNodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPathNodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPathNodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CategoryPathNodeModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryPathNodeModelCopyWith<$Res> implements $CategoryPathNodeModelCopyWith<$Res> {
  factory _$CategoryPathNodeModelCopyWith(_CategoryPathNodeModel value, $Res Function(_CategoryPathNodeModel) _then) = __$CategoryPathNodeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CategoryPathNodeModelCopyWithImpl<$Res>
    implements _$CategoryPathNodeModelCopyWith<$Res> {
  __$CategoryPathNodeModelCopyWithImpl(this._self, this._then);

  final _CategoryPathNodeModel _self;
  final $Res Function(_CategoryPathNodeModel) _then;

/// Create a copy of CategoryPathNodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CategoryPathNodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
