// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogProduct {

 String get id; String get title; String get domainId; String get status; String? get thumbnailUrl; List<String> get pictureUrls; String? get shortDescription; List<ProductAttribute> get attributes;/// Oferta asociada si se enriqueció o se pidió detalle con ofertas.
 ProductOffer? get bestOffer;
/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogProductCopyWith<CatalogProduct> get copyWith => _$CatalogProductCopyWithImpl<CatalogProduct>(this as CatalogProduct, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.domainId, domainId) || other.domainId == domainId)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other.pictureUrls, pictureUrls)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.bestOffer, bestOffer) || other.bestOffer == bestOffer));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,domainId,status,thumbnailUrl,const DeepCollectionEquality().hash(pictureUrls),shortDescription,const DeepCollectionEquality().hash(attributes),bestOffer);

@override
String toString() {
  return 'CatalogProduct(id: $id, title: $title, domainId: $domainId, status: $status, thumbnailUrl: $thumbnailUrl, pictureUrls: $pictureUrls, shortDescription: $shortDescription, attributes: $attributes, bestOffer: $bestOffer)';
}


}

/// @nodoc
abstract mixin class $CatalogProductCopyWith<$Res>  {
  factory $CatalogProductCopyWith(CatalogProduct value, $Res Function(CatalogProduct) _then) = _$CatalogProductCopyWithImpl;
@useResult
$Res call({
 String id, String title, String domainId, String status, String? thumbnailUrl, List<String> pictureUrls, String? shortDescription, List<ProductAttribute> attributes, ProductOffer? bestOffer
});


$ProductOfferCopyWith<$Res>? get bestOffer;

}
/// @nodoc
class _$CatalogProductCopyWithImpl<$Res>
    implements $CatalogProductCopyWith<$Res> {
  _$CatalogProductCopyWithImpl(this._self, this._then);

  final CatalogProduct _self;
  final $Res Function(CatalogProduct) _then;

/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? domainId = null,Object? status = null,Object? thumbnailUrl = freezed,Object? pictureUrls = null,Object? shortDescription = freezed,Object? attributes = null,Object? bestOffer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,domainId: null == domainId ? _self.domainId : domainId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pictureUrls: null == pictureUrls ? _self.pictureUrls : pictureUrls // ignore: cast_nullable_to_non_nullable
as List<String>,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>,bestOffer: freezed == bestOffer ? _self.bestOffer : bestOffer // ignore: cast_nullable_to_non_nullable
as ProductOffer?,
  ));
}
/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductOfferCopyWith<$Res>? get bestOffer {
    if (_self.bestOffer == null) {
    return null;
  }

  return $ProductOfferCopyWith<$Res>(_self.bestOffer!, (value) {
    return _then(_self.copyWith(bestOffer: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogProduct].
extension CatalogProductPatterns on CatalogProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogProduct value)  $default,){
final _that = this;
switch (_that) {
case _CatalogProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogProduct value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String domainId,  String status,  String? thumbnailUrl,  List<String> pictureUrls,  String? shortDescription,  List<ProductAttribute> attributes,  ProductOffer? bestOffer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogProduct() when $default != null:
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.thumbnailUrl,_that.pictureUrls,_that.shortDescription,_that.attributes,_that.bestOffer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String domainId,  String status,  String? thumbnailUrl,  List<String> pictureUrls,  String? shortDescription,  List<ProductAttribute> attributes,  ProductOffer? bestOffer)  $default,) {final _that = this;
switch (_that) {
case _CatalogProduct():
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.thumbnailUrl,_that.pictureUrls,_that.shortDescription,_that.attributes,_that.bestOffer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String domainId,  String status,  String? thumbnailUrl,  List<String> pictureUrls,  String? shortDescription,  List<ProductAttribute> attributes,  ProductOffer? bestOffer)?  $default,) {final _that = this;
switch (_that) {
case _CatalogProduct() when $default != null:
return $default(_that.id,_that.title,_that.domainId,_that.status,_that.thumbnailUrl,_that.pictureUrls,_that.shortDescription,_that.attributes,_that.bestOffer);case _:
  return null;

}
}

}

/// @nodoc


class _CatalogProduct extends CatalogProduct {
  const _CatalogProduct({required this.id, required this.title, required this.domainId, required this.status, this.thumbnailUrl, final  List<String> pictureUrls = const [], this.shortDescription, final  List<ProductAttribute> attributes = const [], this.bestOffer}): _pictureUrls = pictureUrls,_attributes = attributes,super._();
  

@override final  String id;
@override final  String title;
@override final  String domainId;
@override final  String status;
@override final  String? thumbnailUrl;
 final  List<String> _pictureUrls;
@override@JsonKey() List<String> get pictureUrls {
  if (_pictureUrls is EqualUnmodifiableListView) return _pictureUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pictureUrls);
}

@override final  String? shortDescription;
 final  List<ProductAttribute> _attributes;
@override@JsonKey() List<ProductAttribute> get attributes {
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributes);
}

/// Oferta asociada si se enriqueció o se pidió detalle con ofertas.
@override final  ProductOffer? bestOffer;

/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogProductCopyWith<_CatalogProduct> get copyWith => __$CatalogProductCopyWithImpl<_CatalogProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.domainId, domainId) || other.domainId == domainId)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other._pictureUrls, _pictureUrls)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.bestOffer, bestOffer) || other.bestOffer == bestOffer));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,domainId,status,thumbnailUrl,const DeepCollectionEquality().hash(_pictureUrls),shortDescription,const DeepCollectionEquality().hash(_attributes),bestOffer);

@override
String toString() {
  return 'CatalogProduct(id: $id, title: $title, domainId: $domainId, status: $status, thumbnailUrl: $thumbnailUrl, pictureUrls: $pictureUrls, shortDescription: $shortDescription, attributes: $attributes, bestOffer: $bestOffer)';
}


}

/// @nodoc
abstract mixin class _$CatalogProductCopyWith<$Res> implements $CatalogProductCopyWith<$Res> {
  factory _$CatalogProductCopyWith(_CatalogProduct value, $Res Function(_CatalogProduct) _then) = __$CatalogProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String domainId, String status, String? thumbnailUrl, List<String> pictureUrls, String? shortDescription, List<ProductAttribute> attributes, ProductOffer? bestOffer
});


@override $ProductOfferCopyWith<$Res>? get bestOffer;

}
/// @nodoc
class __$CatalogProductCopyWithImpl<$Res>
    implements _$CatalogProductCopyWith<$Res> {
  __$CatalogProductCopyWithImpl(this._self, this._then);

  final _CatalogProduct _self;
  final $Res Function(_CatalogProduct) _then;

/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? domainId = null,Object? status = null,Object? thumbnailUrl = freezed,Object? pictureUrls = null,Object? shortDescription = freezed,Object? attributes = null,Object? bestOffer = freezed,}) {
  return _then(_CatalogProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,domainId: null == domainId ? _self.domainId : domainId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pictureUrls: null == pictureUrls ? _self._pictureUrls : pictureUrls // ignore: cast_nullable_to_non_nullable
as List<String>,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>,bestOffer: freezed == bestOffer ? _self.bestOffer : bestOffer // ignore: cast_nullable_to_non_nullable
as ProductOffer?,
  ));
}

/// Create a copy of CatalogProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductOfferCopyWith<$Res>? get bestOffer {
    if (_self.bestOffer == null) {
    return null;
  }

  return $ProductOfferCopyWith<$Res>(_self.bestOffer!, (value) {
    return _then(_self.copyWith(bestOffer: value));
  });
}
}

/// @nodoc
mixin _$ProductAttribute {

 String get id; String get name; String? get valueName;
/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAttributeCopyWith<ProductAttribute> get copyWith => _$ProductAttributeCopyWithImpl<ProductAttribute>(this as ProductAttribute, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAttribute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.valueName, valueName) || other.valueName == valueName));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,valueName);

@override
String toString() {
  return 'ProductAttribute(id: $id, name: $name, valueName: $valueName)';
}


}

/// @nodoc
abstract mixin class $ProductAttributeCopyWith<$Res>  {
  factory $ProductAttributeCopyWith(ProductAttribute value, $Res Function(ProductAttribute) _then) = _$ProductAttributeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? valueName
});




}
/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._self, this._then);

  final ProductAttribute _self;
  final $Res Function(ProductAttribute) _then;

/// Create a copy of ProductAttribute
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


/// Adds pattern-matching-related methods to [ProductAttribute].
extension ProductAttributePatterns on ProductAttribute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAttribute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAttribute value)  $default,){
final _that = this;
switch (_that) {
case _ProductAttribute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAttribute value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
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
case _ProductAttribute() when $default != null:
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
case _ProductAttribute():
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
case _ProductAttribute() when $default != null:
return $default(_that.id,_that.name,_that.valueName);case _:
  return null;

}
}

}

/// @nodoc


class _ProductAttribute implements ProductAttribute {
  const _ProductAttribute({required this.id, required this.name, this.valueName});
  

@override final  String id;
@override final  String name;
@override final  String? valueName;

/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAttributeCopyWith<_ProductAttribute> get copyWith => __$ProductAttributeCopyWithImpl<_ProductAttribute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAttribute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.valueName, valueName) || other.valueName == valueName));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,valueName);

@override
String toString() {
  return 'ProductAttribute(id: $id, name: $name, valueName: $valueName)';
}


}

/// @nodoc
abstract mixin class _$ProductAttributeCopyWith<$Res> implements $ProductAttributeCopyWith<$Res> {
  factory _$ProductAttributeCopyWith(_ProductAttribute value, $Res Function(_ProductAttribute) _then) = __$ProductAttributeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? valueName
});




}
/// @nodoc
class __$ProductAttributeCopyWithImpl<$Res>
    implements _$ProductAttributeCopyWith<$Res> {
  __$ProductAttributeCopyWithImpl(this._self, this._then);

  final _ProductAttribute _self;
  final $Res Function(_ProductAttribute) _then;

/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? valueName = freezed,}) {
  return _then(_ProductAttribute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,valueName: freezed == valueName ? _self.valueName : valueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProductOffer {

 String get itemId; double get price; String get currencyId; String get condition; double? get originalPrice;/// Categoría hoja que devuelve MeLi en la oferta.
 String? get categoryId;/// Categoría raíz MLA resuelta vía `path_from_root` (capa data).
 String? get rootCategoryId; bool get freeShipping; int? get sellerId;
/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOfferCopyWith<ProductOffer> get copyWith => _$ProductOfferCopyWithImpl<ProductOffer>(this as ProductOffer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOffer&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.rootCategoryId, rootCategoryId) || other.rootCategoryId == rootCategoryId)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,price,currencyId,condition,originalPrice,categoryId,rootCategoryId,freeShipping,sellerId);

@override
String toString() {
  return 'ProductOffer(itemId: $itemId, price: $price, currencyId: $currencyId, condition: $condition, originalPrice: $originalPrice, categoryId: $categoryId, rootCategoryId: $rootCategoryId, freeShipping: $freeShipping, sellerId: $sellerId)';
}


}

/// @nodoc
abstract mixin class $ProductOfferCopyWith<$Res>  {
  factory $ProductOfferCopyWith(ProductOffer value, $Res Function(ProductOffer) _then) = _$ProductOfferCopyWithImpl;
@useResult
$Res call({
 String itemId, double price, String currencyId, String condition, double? originalPrice, String? categoryId, String? rootCategoryId, bool freeShipping, int? sellerId
});




}
/// @nodoc
class _$ProductOfferCopyWithImpl<$Res>
    implements $ProductOfferCopyWith<$Res> {
  _$ProductOfferCopyWithImpl(this._self, this._then);

  final ProductOffer _self;
  final $Res Function(ProductOffer) _then;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? price = null,Object? currencyId = null,Object? condition = null,Object? originalPrice = freezed,Object? categoryId = freezed,Object? rootCategoryId = freezed,Object? freeShipping = null,Object? sellerId = freezed,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,rootCategoryId: freezed == rootCategoryId ? _self.rootCategoryId : rootCategoryId // ignore: cast_nullable_to_non_nullable
as String?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOffer].
extension ProductOfferPatterns on ProductOffer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOffer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOffer value)  $default,){
final _that = this;
switch (_that) {
case _ProductOffer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOffer value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId,  String? rootCategoryId,  bool freeShipping,  int? sellerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.rootCategoryId,_that.freeShipping,_that.sellerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId,  String? rootCategoryId,  bool freeShipping,  int? sellerId)  $default,) {final _that = this;
switch (_that) {
case _ProductOffer():
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.rootCategoryId,_that.freeShipping,_that.sellerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  double price,  String currencyId,  String condition,  double? originalPrice,  String? categoryId,  String? rootCategoryId,  bool freeShipping,  int? sellerId)?  $default,) {final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
return $default(_that.itemId,_that.price,_that.currencyId,_that.condition,_that.originalPrice,_that.categoryId,_that.rootCategoryId,_that.freeShipping,_that.sellerId);case _:
  return null;

}
}

}

/// @nodoc


class _ProductOffer extends ProductOffer {
  const _ProductOffer({required this.itemId, required this.price, required this.currencyId, required this.condition, this.originalPrice, this.categoryId, this.rootCategoryId, this.freeShipping = false, this.sellerId}): super._();
  

@override final  String itemId;
@override final  double price;
@override final  String currencyId;
@override final  String condition;
@override final  double? originalPrice;
/// Categoría hoja que devuelve MeLi en la oferta.
@override final  String? categoryId;
/// Categoría raíz MLA resuelta vía `path_from_root` (capa data).
@override final  String? rootCategoryId;
@override@JsonKey() final  bool freeShipping;
@override final  int? sellerId;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOfferCopyWith<_ProductOffer> get copyWith => __$ProductOfferCopyWithImpl<_ProductOffer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOffer&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.rootCategoryId, rootCategoryId) || other.rootCategoryId == rootCategoryId)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,price,currencyId,condition,originalPrice,categoryId,rootCategoryId,freeShipping,sellerId);

@override
String toString() {
  return 'ProductOffer(itemId: $itemId, price: $price, currencyId: $currencyId, condition: $condition, originalPrice: $originalPrice, categoryId: $categoryId, rootCategoryId: $rootCategoryId, freeShipping: $freeShipping, sellerId: $sellerId)';
}


}

/// @nodoc
abstract mixin class _$ProductOfferCopyWith<$Res> implements $ProductOfferCopyWith<$Res> {
  factory _$ProductOfferCopyWith(_ProductOffer value, $Res Function(_ProductOffer) _then) = __$ProductOfferCopyWithImpl;
@override @useResult
$Res call({
 String itemId, double price, String currencyId, String condition, double? originalPrice, String? categoryId, String? rootCategoryId, bool freeShipping, int? sellerId
});




}
/// @nodoc
class __$ProductOfferCopyWithImpl<$Res>
    implements _$ProductOfferCopyWith<$Res> {
  __$ProductOfferCopyWithImpl(this._self, this._then);

  final _ProductOffer _self;
  final $Res Function(_ProductOffer) _then;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? price = null,Object? currencyId = null,Object? condition = null,Object? originalPrice = freezed,Object? categoryId = freezed,Object? rootCategoryId = freezed,Object? freeShipping = null,Object? sellerId = freezed,}) {
  return _then(_ProductOffer(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,rootCategoryId: freezed == rootCategoryId ? _self.rootCategoryId : rootCategoryId // ignore: cast_nullable_to_non_nullable
as String?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ProductSearchPage {

 String get query; List<CatalogProduct> get results; int get total; int get limit; int get offset;
/// Create a copy of ProductSearchPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSearchPageCopyWith<ProductSearchPage> get copyWith => _$ProductSearchPageCopyWithImpl<ProductSearchPage>(this as ProductSearchPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSearchPage&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(results),total,limit,offset);

@override
String toString() {
  return 'ProductSearchPage(query: $query, results: $results, total: $total, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $ProductSearchPageCopyWith<$Res>  {
  factory $ProductSearchPageCopyWith(ProductSearchPage value, $Res Function(ProductSearchPage) _then) = _$ProductSearchPageCopyWithImpl;
@useResult
$Res call({
 String query, List<CatalogProduct> results, int total, int limit, int offset
});




}
/// @nodoc
class _$ProductSearchPageCopyWithImpl<$Res>
    implements $ProductSearchPageCopyWith<$Res> {
  _$ProductSearchPageCopyWithImpl(this._self, this._then);

  final ProductSearchPage _self;
  final $Res Function(ProductSearchPage) _then;

/// Create a copy of ProductSearchPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? results = null,Object? total = null,Object? limit = null,Object? offset = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CatalogProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSearchPage].
extension ProductSearchPagePatterns on ProductSearchPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSearchPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSearchPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSearchPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductSearchPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSearchPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSearchPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<CatalogProduct> results,  int total,  int limit,  int offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSearchPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<CatalogProduct> results,  int total,  int limit,  int offset)  $default,) {final _that = this;
switch (_that) {
case _ProductSearchPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<CatalogProduct> results,  int total,  int limit,  int offset)?  $default,) {final _that = this;
switch (_that) {
case _ProductSearchPage() when $default != null:
return $default(_that.query,_that.results,_that.total,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSearchPage implements ProductSearchPage {
  const _ProductSearchPage({required this.query, required final  List<CatalogProduct> results, required this.total, required this.limit, required this.offset}): _results = results;
  

@override final  String query;
 final  List<CatalogProduct> _results;
@override List<CatalogProduct> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  int total;
@override final  int limit;
@override final  int offset;

/// Create a copy of ProductSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSearchPageCopyWith<_ProductSearchPage> get copyWith => __$ProductSearchPageCopyWithImpl<_ProductSearchPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSearchPage&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),total,limit,offset);

@override
String toString() {
  return 'ProductSearchPage(query: $query, results: $results, total: $total, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$ProductSearchPageCopyWith<$Res> implements $ProductSearchPageCopyWith<$Res> {
  factory _$ProductSearchPageCopyWith(_ProductSearchPage value, $Res Function(_ProductSearchPage) _then) = __$ProductSearchPageCopyWithImpl;
@override @useResult
$Res call({
 String query, List<CatalogProduct> results, int total, int limit, int offset
});




}
/// @nodoc
class __$ProductSearchPageCopyWithImpl<$Res>
    implements _$ProductSearchPageCopyWith<$Res> {
  __$ProductSearchPageCopyWithImpl(this._self, this._then);

  final _ProductSearchPage _self;
  final $Res Function(_ProductSearchPage) _then;

/// Create a copy of ProductSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? total = null,Object? limit = null,Object? offset = null,}) {
  return _then(_ProductSearchPage(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CatalogProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProductSearchParams {

/// Texto libre a buscar.
 String? get query;/// Si se informa, se resuelve el nombre de la categoría y se suma a la query.
 String? get categoryId; int get limit; int get offset;/// Cuando es true, consulta ofertas por producto (más lento, tiene precios).
 bool get includeOffers;
/// Create a copy of ProductSearchParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSearchParamsCopyWith<ProductSearchParams> get copyWith => _$ProductSearchParamsCopyWithImpl<ProductSearchParams>(this as ProductSearchParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.includeOffers, includeOffers) || other.includeOffers == includeOffers));
}


@override
int get hashCode => Object.hash(runtimeType,query,categoryId,limit,offset,includeOffers);

@override
String toString() {
  return 'ProductSearchParams(query: $query, categoryId: $categoryId, limit: $limit, offset: $offset, includeOffers: $includeOffers)';
}


}

/// @nodoc
abstract mixin class $ProductSearchParamsCopyWith<$Res>  {
  factory $ProductSearchParamsCopyWith(ProductSearchParams value, $Res Function(ProductSearchParams) _then) = _$ProductSearchParamsCopyWithImpl;
@useResult
$Res call({
 String? query, String? categoryId, int limit, int offset, bool includeOffers
});




}
/// @nodoc
class _$ProductSearchParamsCopyWithImpl<$Res>
    implements $ProductSearchParamsCopyWith<$Res> {
  _$ProductSearchParamsCopyWithImpl(this._self, this._then);

  final ProductSearchParams _self;
  final $Res Function(ProductSearchParams) _then;

/// Create a copy of ProductSearchParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? categoryId = freezed,Object? limit = null,Object? offset = null,Object? includeOffers = null,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,includeOffers: null == includeOffers ? _self.includeOffers : includeOffers // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSearchParams].
extension ProductSearchParamsPatterns on ProductSearchParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSearchParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSearchParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSearchParams value)  $default,){
final _that = this;
switch (_that) {
case _ProductSearchParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSearchParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSearchParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  String? categoryId,  int limit,  int offset,  bool includeOffers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSearchParams() when $default != null:
return $default(_that.query,_that.categoryId,_that.limit,_that.offset,_that.includeOffers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  String? categoryId,  int limit,  int offset,  bool includeOffers)  $default,) {final _that = this;
switch (_that) {
case _ProductSearchParams():
return $default(_that.query,_that.categoryId,_that.limit,_that.offset,_that.includeOffers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  String? categoryId,  int limit,  int offset,  bool includeOffers)?  $default,) {final _that = this;
switch (_that) {
case _ProductSearchParams() when $default != null:
return $default(_that.query,_that.categoryId,_that.limit,_that.offset,_that.includeOffers);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSearchParams implements ProductSearchParams {
  const _ProductSearchParams({this.query, this.categoryId, this.limit = 20, this.offset = 0, this.includeOffers = false});
  

/// Texto libre a buscar.
@override final  String? query;
/// Si se informa, se resuelve el nombre de la categoría y se suma a la query.
@override final  String? categoryId;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
/// Cuando es true, consulta ofertas por producto (más lento, tiene precios).
@override@JsonKey() final  bool includeOffers;

/// Create a copy of ProductSearchParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSearchParamsCopyWith<_ProductSearchParams> get copyWith => __$ProductSearchParamsCopyWithImpl<_ProductSearchParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.includeOffers, includeOffers) || other.includeOffers == includeOffers));
}


@override
int get hashCode => Object.hash(runtimeType,query,categoryId,limit,offset,includeOffers);

@override
String toString() {
  return 'ProductSearchParams(query: $query, categoryId: $categoryId, limit: $limit, offset: $offset, includeOffers: $includeOffers)';
}


}

/// @nodoc
abstract mixin class _$ProductSearchParamsCopyWith<$Res> implements $ProductSearchParamsCopyWith<$Res> {
  factory _$ProductSearchParamsCopyWith(_ProductSearchParams value, $Res Function(_ProductSearchParams) _then) = __$ProductSearchParamsCopyWithImpl;
@override @useResult
$Res call({
 String? query, String? categoryId, int limit, int offset, bool includeOffers
});




}
/// @nodoc
class __$ProductSearchParamsCopyWithImpl<$Res>
    implements _$ProductSearchParamsCopyWith<$Res> {
  __$ProductSearchParamsCopyWithImpl(this._self, this._then);

  final _ProductSearchParams _self;
  final $Res Function(_ProductSearchParams) _then;

/// Create a copy of ProductSearchParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? categoryId = freezed,Object? limit = null,Object? offset = null,Object? includeOffers = null,}) {
  return _then(_ProductSearchParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,includeOffers: null == includeOffers ? _self.includeOffers : includeOffers // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
