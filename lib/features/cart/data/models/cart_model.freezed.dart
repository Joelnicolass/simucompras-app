// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartLineModel {

 String get productId; String get title; String? get thumbnailUrl; double get unitPrice; double? get originalUnitPrice; int get quantity; bool get isSuperOffer; String? get categoryId;
/// Create a copy of CartLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartLineModelCopyWith<CartLineModel> get copyWith => _$CartLineModelCopyWithImpl<CartLineModel>(this as CartLineModel, _$identity);

  /// Serializes this CartLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.originalUnitPrice, originalUnitPrice) || other.originalUnitPrice == originalUnitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,originalUnitPrice,quantity,isSuperOffer,categoryId);

@override
String toString() {
  return 'CartLineModel(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, originalUnitPrice: $originalUnitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $CartLineModelCopyWith<$Res>  {
  factory $CartLineModelCopyWith(CartLineModel value, $Res Function(CartLineModel) _then) = _$CartLineModelCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, double? originalUnitPrice, int quantity, bool isSuperOffer, String? categoryId
});




}
/// @nodoc
class _$CartLineModelCopyWithImpl<$Res>
    implements $CartLineModelCopyWith<$Res> {
  _$CartLineModelCopyWithImpl(this._self, this._then);

  final CartLineModel _self;
  final $Res Function(CartLineModel) _then;

/// Create a copy of CartLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? originalUnitPrice = freezed,Object? quantity = null,Object? isSuperOffer = null,Object? categoryId = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,originalUnitPrice: freezed == originalUnitPrice ? _self.originalUnitPrice : originalUnitPrice // ignore: cast_nullable_to_non_nullable
as double?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartLineModel].
extension CartLineModelPatterns on CartLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartLineModel value)  $default,){
final _that = this;
switch (_that) {
case _CartLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartLineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  double? originalUnitPrice,  int quantity,  bool isSuperOffer,  String? categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.originalUnitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  double? originalUnitPrice,  int quantity,  bool isSuperOffer,  String? categoryId)  $default,) {final _that = this;
switch (_that) {
case _CartLineModel():
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.originalUnitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  double? originalUnitPrice,  int quantity,  bool isSuperOffer,  String? categoryId)?  $default,) {final _that = this;
switch (_that) {
case _CartLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.originalUnitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartLineModel implements CartLineModel {
  const _CartLineModel({required this.productId, required this.title, this.thumbnailUrl, required this.unitPrice, this.originalUnitPrice, required this.quantity, this.isSuperOffer = false, this.categoryId});
  factory _CartLineModel.fromJson(Map<String, dynamic> json) => _$CartLineModelFromJson(json);

@override final  String productId;
@override final  String title;
@override final  String? thumbnailUrl;
@override final  double unitPrice;
@override final  double? originalUnitPrice;
@override final  int quantity;
@override@JsonKey() final  bool isSuperOffer;
@override final  String? categoryId;

/// Create a copy of CartLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartLineModelCopyWith<_CartLineModel> get copyWith => __$CartLineModelCopyWithImpl<_CartLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.originalUnitPrice, originalUnitPrice) || other.originalUnitPrice == originalUnitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,originalUnitPrice,quantity,isSuperOffer,categoryId);

@override
String toString() {
  return 'CartLineModel(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, originalUnitPrice: $originalUnitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$CartLineModelCopyWith<$Res> implements $CartLineModelCopyWith<$Res> {
  factory _$CartLineModelCopyWith(_CartLineModel value, $Res Function(_CartLineModel) _then) = __$CartLineModelCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, double? originalUnitPrice, int quantity, bool isSuperOffer, String? categoryId
});




}
/// @nodoc
class __$CartLineModelCopyWithImpl<$Res>
    implements _$CartLineModelCopyWith<$Res> {
  __$CartLineModelCopyWithImpl(this._self, this._then);

  final _CartLineModel _self;
  final $Res Function(_CartLineModel) _then;

/// Create a copy of CartLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? originalUnitPrice = freezed,Object? quantity = null,Object? isSuperOffer = null,Object? categoryId = freezed,}) {
  return _then(_CartLineModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,originalUnitPrice: freezed == originalUnitPrice ? _self.originalUnitPrice : originalUnitPrice // ignore: cast_nullable_to_non_nullable
as double?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartModel {

 List<CartLineModel> get lines;
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartModelCopyWith<CartModel> get copyWith => _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartModel&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'CartModel(lines: $lines)';
}


}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res>  {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) = _$CartModelCopyWithImpl;
@useResult
$Res call({
 List<CartLineModel> lines
});




}
/// @nodoc
class _$CartModelCopyWithImpl<$Res>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartLineModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartModel].
extension CartModelPatterns on CartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartModel value)  $default,){
final _that = this;
switch (_that) {
case _CartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartLineModel> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartLineModel> lines)  $default,) {final _that = this;
switch (_that) {
case _CartModel():
return $default(_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartLineModel> lines)?  $default,) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartModel implements CartModel {
  const _CartModel({final  List<CartLineModel> lines = const []}): _lines = lines;
  factory _CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

 final  List<CartLineModel> _lines;
@override@JsonKey() List<CartLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartModelCopyWith<_CartModel> get copyWith => __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartModel&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'CartModel(lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(_CartModel value, $Res Function(_CartModel) _then) = __$CartModelCopyWithImpl;
@override @useResult
$Res call({
 List<CartLineModel> lines
});




}
/// @nodoc
class __$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,}) {
  return _then(_CartModel(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartLineModel>,
  ));
}


}

// dart format on
