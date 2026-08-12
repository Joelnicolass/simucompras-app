// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogProductModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(readValue: _readTitle) String get title; String get domainId; String get status;@JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson) List<String> get pictureUrls;@JsonKey(fromJson: _shortDescriptionFromJson) String? get shortDescription;@JsonKey(fromJson: _attributesFromJson) List<ProductAttributeModel> get attributes;
/// Create a copy of CatalogProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogProductModelCopyWith<CatalogProductModel> get copyWith => _$CatalogProductModelCopyWithImpl<CatalogProductModel>(this as CatalogProductModel, _$identity);

  /// Serializes this CatalogProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.domainId, domainId) || other.domainId == domainId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.pictureUrls, pictureUrls)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,domainId,status,const DeepCollectionEquality().hash(pictureUrls),shortDescription,const DeepCollectionEquality().hash(attributes));

@override
String toString() {
  return 'CatalogProductModel(id: $id, title: $title, domainId: $domainId, status: $status, pictureUrls: $pictureUrls, shortDescription: $shortDescription, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $CatalogProductModelCopyWith<$Res>  {
  factory $CatalogProductModelCopyWith(CatalogProductModel value, $Res Function(CatalogProductModel) _then) = _$CatalogProductModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(readValue: _readTitle) String title, String domainId, String status,@JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson) List<String> pictureUrls,@JsonKey(fromJson: _shortDescriptionFromJson) String? shortDescription,@JsonKey(fromJson: _attributesFromJson) List<ProductAttributeModel> attributes
});




}
/// @nodoc
class _$CatalogProductModelCopyWithImpl<$Res>
    implements $CatalogProductModelCopyWith<$Res> {
  _$CatalogProductModelCopyWithImpl(this._self, this._then);

  final CatalogProductModel _self;
  final $Res Function(CatalogProductModel) _then;

/// Create a copy of CatalogProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? domainId = null,Object? status = null,Object? pictureUrls = null,Object? shortDescription = freezed,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,domainId: null == domainId ? _self.domainId : domainId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pictureUrls: null == pictureUrls ? _self.pictureUrls : pictureUrls // ignore: cast_nullable_to_non_nullable
as List<String>,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttributeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogProductModel].
extension CatalogProductModelPatterns on CatalogProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogProductModel value)  $default,){
final _that = this;
switch (_that) {
case _CatalogProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readTitle)  String title,  String domainId,  String status, @JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson)  List<String> pictureUrls, @JsonKey(fromJson: _shortDescriptionFromJson)  String? shortDescription, @JsonKey(fromJson: _attributesFromJson)  List<ProductAttributeModel> attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogProductModel() when $default != null:
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.pictureUrls,_that.shortDescription,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readTitle)  String title,  String domainId,  String status, @JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson)  List<String> pictureUrls, @JsonKey(fromJson: _shortDescriptionFromJson)  String? shortDescription, @JsonKey(fromJson: _attributesFromJson)  List<ProductAttributeModel> attributes)  $default,) {final _that = this;
switch (_that) {
case _CatalogProductModel():
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.pictureUrls,_that.shortDescription,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readTitle)  String title,  String domainId,  String status, @JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson)  List<String> pictureUrls, @JsonKey(fromJson: _shortDescriptionFromJson)  String? shortDescription, @JsonKey(fromJson: _attributesFromJson)  List<ProductAttributeModel> attributes)?  $default,) {final _that = this;
switch (_that) {
case _CatalogProductModel() when $default != null:
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.pictureUrls,_that.shortDescription,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CatalogProductModel extends CatalogProductModel {
  const _CatalogProductModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(readValue: _readTitle) this.title = '', this.domainId = '', this.status = 'unknown', @JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson) final  List<String> pictureUrls = const [], @JsonKey(fromJson: _shortDescriptionFromJson) this.shortDescription, @JsonKey(fromJson: _attributesFromJson) final  List<ProductAttributeModel> attributes = const []}): _pictureUrls = pictureUrls,_attributes = attributes,super._();
  factory _CatalogProductModel.fromJson(Map<String, dynamic> json) => _$CatalogProductModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(readValue: _readTitle) final  String title;
@override@JsonKey() final  String domainId;
@override@JsonKey() final  String status;
 final  List<String> _pictureUrls;
@override@JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson) List<String> get pictureUrls {
  if (_pictureUrls is EqualUnmodifiableListView) return _pictureUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pictureUrls);
}

@override@JsonKey(fromJson: _shortDescriptionFromJson) final  String? shortDescription;
 final  List<ProductAttributeModel> _attributes;
@override@JsonKey(fromJson: _attributesFromJson) List<ProductAttributeModel> get attributes {
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributes);
}


/// Create a copy of CatalogProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogProductModelCopyWith<_CatalogProductModel> get copyWith => __$CatalogProductModelCopyWithImpl<_CatalogProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.domainId, domainId) || other.domainId == domainId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._pictureUrls, _pictureUrls)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,domainId,status,const DeepCollectionEquality().hash(_pictureUrls),shortDescription,const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'CatalogProductModel(id: $id, title: $title, domainId: $domainId, status: $status, pictureUrls: $pictureUrls, shortDescription: $shortDescription, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$CatalogProductModelCopyWith<$Res> implements $CatalogProductModelCopyWith<$Res> {
  factory _$CatalogProductModelCopyWith(_CatalogProductModel value, $Res Function(_CatalogProductModel) _then) = __$CatalogProductModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(readValue: _readTitle) String title, String domainId, String status,@JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson) List<String> pictureUrls,@JsonKey(fromJson: _shortDescriptionFromJson) String? shortDescription,@JsonKey(fromJson: _attributesFromJson) List<ProductAttributeModel> attributes
});




}
/// @nodoc
class __$CatalogProductModelCopyWithImpl<$Res>
    implements _$CatalogProductModelCopyWith<$Res> {
  __$CatalogProductModelCopyWithImpl(this._self, this._then);

  final _CatalogProductModel _self;
  final $Res Function(_CatalogProductModel) _then;

/// Create a copy of CatalogProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? domainId = null,Object? status = null,Object? pictureUrls = null,Object? shortDescription = freezed,Object? attributes = null,}) {
  return _then(_CatalogProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,domainId: null == domainId ? _self.domainId : domainId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pictureUrls: null == pictureUrls ? _self._pictureUrls : pictureUrls // ignore: cast_nullable_to_non_nullable
as List<String>,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttributeModel>,
  ));
}


}


/// @nodoc
mixin _$ProductAttributeModel {

 String get id; String get name; String? get valueName;
/// Create a copy of ProductAttributeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAttributeModelCopyWith<ProductAttributeModel> get copyWith => _$ProductAttributeModelCopyWithImpl<ProductAttributeModel>(this as ProductAttributeModel, _$identity);

  /// Serializes this ProductAttributeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAttributeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.valueName, valueName) || other.valueName == valueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,valueName);

@override
String toString() {
  return 'ProductAttributeModel(id: $id, name: $name, valueName: $valueName)';
}


}

/// @nodoc
abstract mixin class $ProductAttributeModelCopyWith<$Res>  {
  factory $ProductAttributeModelCopyWith(ProductAttributeModel value, $Res Function(ProductAttributeModel) _then) = _$ProductAttributeModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? valueName
});




}
/// @nodoc
class _$ProductAttributeModelCopyWithImpl<$Res>
    implements $ProductAttributeModelCopyWith<$Res> {
  _$ProductAttributeModelCopyWithImpl(this._self, this._then);

  final ProductAttributeModel _self;
  final $Res Function(ProductAttributeModel) _then;

/// Create a copy of ProductAttributeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? valueName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,valueName: freezed == valueName ? _self.valueName : valueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductAttributeModel].
extension ProductAttributeModelPatterns on ProductAttributeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAttributeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAttributeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAttributeModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductAttributeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAttributeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAttributeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? valueName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductAttributeModel() when $default != null:
return $default(_that.id,_that.name,_that.valueName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? valueName)  $default,) {final _that = this;
switch (_that) {
case _ProductAttributeModel():
return $default(_that.id,_that.name,_that.valueName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? valueName)?  $default,) {final _that = this;
switch (_that) {
case _ProductAttributeModel() when $default != null:
return $default(_that.id,_that.name,_that.valueName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProductAttributeModel implements ProductAttributeModel {
  const _ProductAttributeModel({this.id = '', this.name = '', this.valueName});
  factory _ProductAttributeModel.fromJson(Map<String, dynamic> json) => _$ProductAttributeModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override final  String? valueName;

/// Create a copy of ProductAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAttributeModelCopyWith<_ProductAttributeModel> get copyWith => __$ProductAttributeModelCopyWithImpl<_ProductAttributeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductAttributeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAttributeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.valueName, valueName) || other.valueName == valueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,valueName);

@override
String toString() {
  return 'ProductAttributeModel(id: $id, name: $name, valueName: $valueName)';
}


}

/// @nodoc
abstract mixin class _$ProductAttributeModelCopyWith<$Res> implements $ProductAttributeModelCopyWith<$Res> {
  factory _$ProductAttributeModelCopyWith(_ProductAttributeModel value, $Res Function(_ProductAttributeModel) _then) = __$ProductAttributeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? valueName
});




}
/// @nodoc
class __$ProductAttributeModelCopyWithImpl<$Res>
    implements _$ProductAttributeModelCopyWith<$Res> {
  __$ProductAttributeModelCopyWithImpl(this._self, this._then);

  final _ProductAttributeModel _self;
  final $Res Function(_ProductAttributeModel) _then;

/// Create a copy of ProductAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? valueName = freezed,}) {
  return _then(_ProductAttributeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,valueName: freezed == valueName ? _self.valueName : valueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductOfferModel {

 String get itemId; double get price; String get currencyId; String get condition; double? get originalPrice; String? get categoryId;@JsonKey(readValue: _readFreeShipping) bool get freeShipping; int? get sellerId;
/// Create a copy of ProductOfferModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOfferModelCopyWith<ProductOfferModel> get copyWith => _$ProductOfferModelCopyWithImpl<ProductOfferModel>(this as ProductOfferModel, _$identity);

  /// Serializes this ProductOfferModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOfferModel&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,price,currencyId,condition,originalPrice,categoryId,freeShipping,sellerId);

@override
String toString() {
  return 'ProductOfferModel(itemId: $itemId, price: $price, currencyId: $currencyId, condition: $condition, originalPrice: $originalPrice, categoryId: $categoryId, freeShipping: $freeShipping, sellerId: $sellerId)';
}


}

/// @nodoc
abstract mixin class $ProductOfferModelCopyWith<$Res>  {
  factory $ProductOfferModelCopyWith(ProductOfferModel value, $Res Function(ProductOfferModel) _then) = _$ProductOfferModelCopyWithImpl;
@useResult
$Res call({
 String itemId, double price, String currencyId, String condition, double? originalPrice, String? categoryId,@JsonKey(readValue: _readFreeShipping) bool freeShipping, int? sellerId
});




}
/// @nodoc
class _$ProductOfferModelCopyWithImpl<$Res>
    implements $ProductOfferModelCopyWith<$Res> {
  _$ProductOfferModelCopyWithImpl(this._self, this._then);

  final ProductOfferModel _self;
  final $Res Function(ProductOfferModel) _then;

/// Create a copy of ProductOfferModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? price = null,Object? currencyId = null,Object? condition = null,Object? originalPrice = freezed,Object? categoryId = freezed,Object? freeShipping = null,Object? sellerId = freezed,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOfferModel].
extension ProductOfferModelPatterns on ProductOfferModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOfferModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOfferModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOfferModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductOfferModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOfferModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOfferModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId, @JsonKey(readValue: _readFreeShipping)  bool freeShipping,  int? sellerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOfferModel() when $default != null:
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.freeShipping,_that.sellerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId, @JsonKey(readValue: _readFreeShipping)  bool freeShipping,  int? sellerId)  $default,) {final _that = this;
switch (_that) {
case _ProductOfferModel():
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.freeShipping,_that.sellerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId, @JsonKey(readValue: _readFreeShipping)  bool freeShipping,  int? sellerId)?  $default,) {final _that = this;
switch (_that) {
case _ProductOfferModel() when $default != null:
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.freeShipping,_that.sellerId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProductOfferModel implements ProductOfferModel {
  const _ProductOfferModel({this.itemId = '', this.price = 0, this.currencyId = '', this.condition = 'not_specified', this.originalPrice, this.categoryId, @JsonKey(readValue: _readFreeShipping) this.freeShipping = false, this.sellerId});
  factory _ProductOfferModel.fromJson(Map<String, dynamic> json) => _$ProductOfferModelFromJson(json);

@override@JsonKey() final  String itemId;
@override@JsonKey() final  double price;
@override@JsonKey() final  String currencyId;
@override@JsonKey() final  String condition;
@override final  double? originalPrice;
@override final  String? categoryId;
@override@JsonKey(readValue: _readFreeShipping) final  bool freeShipping;
@override final  int? sellerId;

/// Create a copy of ProductOfferModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOfferModelCopyWith<_ProductOfferModel> get copyWith => __$ProductOfferModelCopyWithImpl<_ProductOfferModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductOfferModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOfferModel&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,price,currencyId,condition,originalPrice,categoryId,freeShipping,sellerId);

@override
String toString() {
  return 'ProductOfferModel(itemId: $itemId, price: $price, currencyId: $currencyId, condition: $condition, originalPrice: $originalPrice, categoryId: $categoryId, freeShipping: $freeShipping, sellerId: $sellerId)';
}


}

/// @nodoc
abstract mixin class _$ProductOfferModelCopyWith<$Res> implements $ProductOfferModelCopyWith<$Res> {
  factory _$ProductOfferModelCopyWith(_ProductOfferModel value, $Res Function(_ProductOfferModel) _then) = __$ProductOfferModelCopyWithImpl;
@override @useResult
$Res call({
 String itemId, double price, String currencyId, String condition, double? originalPrice, String? categoryId,@JsonKey(readValue: _readFreeShipping) bool freeShipping, int? sellerId
});




}
/// @nodoc
class __$ProductOfferModelCopyWithImpl<$Res>
    implements _$ProductOfferModelCopyWith<$Res> {
  __$ProductOfferModelCopyWithImpl(this._self, this._then);

  final _ProductOfferModel _self;
  final $Res Function(_ProductOfferModel) _then;

/// Create a copy of ProductOfferModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? price = null,Object? currencyId = null,Object? condition = null,Object? originalPrice = freezed,Object? categoryId = freezed,Object? freeShipping = null,Object? sellerId = freezed,}) {
  return _then(_ProductOfferModel(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ProductSearchPageModel {

 String get query; List<CatalogProductModel> get results; int get total; int get limit; int get offset;
/// Create a copy of ProductSearchPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSearchPageModelCopyWith<ProductSearchPageModel> get copyWith => _$ProductSearchPageModelCopyWithImpl<ProductSearchPageModel>(this as ProductSearchPageModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSearchPageModel&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(results),total,limit,offset);

@override
String toString() {
  return 'ProductSearchPageModel(query: $query, results: $results, total: $total, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $ProductSearchPageModelCopyWith<$Res>  {
  factory $ProductSearchPageModelCopyWith(ProductSearchPageModel value, $Res Function(ProductSearchPageModel) _then) = _$ProductSearchPageModelCopyWithImpl;
@useResult
$Res call({
 String query, List<CatalogProductModel> results, int total, int limit, int offset
});




}
/// @nodoc
class _$ProductSearchPageModelCopyWithImpl<$Res>
    implements $ProductSearchPageModelCopyWith<$Res> {
  _$ProductSearchPageModelCopyWithImpl(this._self, this._then);

  final ProductSearchPageModel _self;
  final $Res Function(ProductSearchPageModel) _then;

/// Create a copy of ProductSearchPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? results = null,Object? total = null,Object? limit = null,Object? offset = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CatalogProductModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSearchPageModel].
extension ProductSearchPageModelPatterns on ProductSearchPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSearchPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSearchPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSearchPageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductSearchPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSearchPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSearchPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<CatalogProductModel> results,  int total,  int limit,  int offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSearchPageModel() when $default != null:
return $default(_that.query,_that.results,_that.total,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<CatalogProductModel> results,  int total,  int limit,  int offset)  $default,) {final _that = this;
switch (_that) {
case _ProductSearchPageModel():
return $default(_that.query,_that.results,_that.total,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<CatalogProductModel> results,  int total,  int limit,  int offset)?  $default,) {final _that = this;
switch (_that) {
case _ProductSearchPageModel() when $default != null:
return $default(_that.query,_that.results,_that.total,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSearchPageModel implements ProductSearchPageModel {
  const _ProductSearchPageModel({required this.query, required final  List<CatalogProductModel> results, required this.total, required this.limit, required this.offset}): _results = results;
  

@override final  String query;
 final  List<CatalogProductModel> _results;
@override List<CatalogProductModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  int total;
@override final  int limit;
@override final  int offset;

/// Create a copy of ProductSearchPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSearchPageModelCopyWith<_ProductSearchPageModel> get copyWith => __$ProductSearchPageModelCopyWithImpl<_ProductSearchPageModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSearchPageModel&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),total,limit,offset);

@override
String toString() {
  return 'ProductSearchPageModel(query: $query, results: $results, total: $total, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$ProductSearchPageModelCopyWith<$Res> implements $ProductSearchPageModelCopyWith<$Res> {
  factory _$ProductSearchPageModelCopyWith(_ProductSearchPageModel value, $Res Function(_ProductSearchPageModel) _then) = __$ProductSearchPageModelCopyWithImpl;
@override @useResult
$Res call({
 String query, List<CatalogProductModel> results, int total, int limit, int offset
});




}
/// @nodoc
class __$ProductSearchPageModelCopyWithImpl<$Res>
    implements _$ProductSearchPageModelCopyWith<$Res> {
  __$ProductSearchPageModelCopyWithImpl(this._self, this._then);

  final _ProductSearchPageModel _self;
  final $Res Function(_ProductSearchPageModel) _then;

/// Create a copy of ProductSearchPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? total = null,Object? limit = null,Object? offset = null,}) {
  return _then(_ProductSearchPageModel(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CatalogProductModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
