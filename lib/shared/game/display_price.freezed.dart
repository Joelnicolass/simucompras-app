// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DisplayPrice {

/// Precio final en pesos (mismo número que ARS simulado).
 double get amount;/// Precio tachado si hay descuento / súper oferta.
 double? get originalAmount;/// true si no vino de buy box MeLi.
 bool get isSimulated;/// true si [GamePricing] aplicó descuento de súper oferta.
 bool get isSuperOffer;
/// Create a copy of DisplayPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayPriceCopyWith<DisplayPrice> get copyWith => _$DisplayPriceCopyWithImpl<DisplayPrice>(this as DisplayPrice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.isSimulated, isSimulated) || other.isSimulated == isSimulated)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer));
}


@override
int get hashCode => Object.hash(runtimeType,amount,originalAmount,isSimulated,isSuperOffer);

@override
String toString() {
  return 'DisplayPrice(amount: $amount, originalAmount: $originalAmount, isSimulated: $isSimulated, isSuperOffer: $isSuperOffer)';
}


}

/// @nodoc
abstract mixin class $DisplayPriceCopyWith<$Res>  {
  factory $DisplayPriceCopyWith(DisplayPrice value, $Res Function(DisplayPrice) _then) = _$DisplayPriceCopyWithImpl;
@useResult
$Res call({
 double amount, double? originalAmount, bool isSimulated, bool isSuperOffer
});




}
/// @nodoc
class _$DisplayPriceCopyWithImpl<$Res>
    implements $DisplayPriceCopyWith<$Res> {
  _$DisplayPriceCopyWithImpl(this._self, this._then);

  final DisplayPrice _self;
  final $Res Function(DisplayPrice) _then;

/// Create a copy of DisplayPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? originalAmount = freezed,Object? isSimulated = null,Object? isSuperOffer = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,originalAmount: freezed == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double?,isSimulated: null == isSimulated ? _self.isSimulated : isSimulated // ignore: cast_nullable_to_non_nullable
as bool,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DisplayPrice].
extension DisplayPricePatterns on DisplayPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisplayPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplayPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisplayPrice value)  $default,){
final _that = this;
switch (_that) {
case _DisplayPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisplayPrice value)?  $default,){
final _that = this;
switch (_that) {
case _DisplayPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  double? originalAmount,  bool isSimulated,  bool isSuperOffer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplayPrice() when $default != null:
return $default(_that.amount,_that.originalAmount,_that.isSimulated,_that.isSuperOffer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  double? originalAmount,  bool isSimulated,  bool isSuperOffer)  $default,) {final _that = this;
switch (_that) {
case _DisplayPrice():
return $default(_that.amount,_that.originalAmount,_that.isSimulated,_that.isSuperOffer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  double? originalAmount,  bool isSimulated,  bool isSuperOffer)?  $default,) {final _that = this;
switch (_that) {
case _DisplayPrice() when $default != null:
return $default(_that.amount,_that.originalAmount,_that.isSimulated,_that.isSuperOffer);case _:
  return null;

}
}

}

/// @nodoc


class _DisplayPrice extends DisplayPrice {
  const _DisplayPrice({required this.amount, this.originalAmount, this.isSimulated = false, this.isSuperOffer = false}): super._();
  

/// Precio final en pesos (mismo número que ARS simulado).
@override final  double amount;
/// Precio tachado si hay descuento / súper oferta.
@override final  double? originalAmount;
/// true si no vino de buy box MeLi.
@override@JsonKey() final  bool isSimulated;
/// true si [GamePricing] aplicó descuento de súper oferta.
@override@JsonKey() final  bool isSuperOffer;

/// Create a copy of DisplayPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayPriceCopyWith<_DisplayPrice> get copyWith => __$DisplayPriceCopyWithImpl<_DisplayPrice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.isSimulated, isSimulated) || other.isSimulated == isSimulated)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer));
}


@override
int get hashCode => Object.hash(runtimeType,amount,originalAmount,isSimulated,isSuperOffer);

@override
String toString() {
  return 'DisplayPrice(amount: $amount, originalAmount: $originalAmount, isSimulated: $isSimulated, isSuperOffer: $isSuperOffer)';
}


}

/// @nodoc
abstract mixin class _$DisplayPriceCopyWith<$Res> implements $DisplayPriceCopyWith<$Res> {
  factory _$DisplayPriceCopyWith(_DisplayPrice value, $Res Function(_DisplayPrice) _then) = __$DisplayPriceCopyWithImpl;
@override @useResult
$Res call({
 double amount, double? originalAmount, bool isSimulated, bool isSuperOffer
});




}
/// @nodoc
class __$DisplayPriceCopyWithImpl<$Res>
    implements _$DisplayPriceCopyWith<$Res> {
  __$DisplayPriceCopyWithImpl(this._self, this._then);

  final _DisplayPrice _self;
  final $Res Function(_DisplayPrice) _then;

/// Create a copy of DisplayPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? originalAmount = freezed,Object? isSimulated = null,Object? isSuperOffer = null,}) {
  return _then(_DisplayPrice(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,originalAmount: freezed == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double?,isSimulated: null == isSimulated ? _self.isSimulated : isSimulated // ignore: cast_nullable_to_non_nullable
as bool,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
