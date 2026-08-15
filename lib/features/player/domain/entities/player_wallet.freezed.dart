// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerWallet {

 int get balancePesos;/// Día (UTC yyyy-MM-dd) de la última recarga diaria aplicada.
 String? get lastDailyTopUpDate;
/// Create a copy of PlayerWallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerWalletCopyWith<PlayerWallet> get copyWith => _$PlayerWalletCopyWithImpl<PlayerWallet>(this as PlayerWallet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerWallet&&(identical(other.balancePesos, balancePesos) || other.balancePesos == balancePesos)&&(identical(other.lastDailyTopUpDate, lastDailyTopUpDate) || other.lastDailyTopUpDate == lastDailyTopUpDate));
}


@override
int get hashCode => Object.hash(runtimeType,balancePesos,lastDailyTopUpDate);

@override
String toString() {
  return 'PlayerWallet(balancePesos: $balancePesos, lastDailyTopUpDate: $lastDailyTopUpDate)';
}


}

/// @nodoc
abstract mixin class $PlayerWalletCopyWith<$Res>  {
  factory $PlayerWalletCopyWith(PlayerWallet value, $Res Function(PlayerWallet) _then) = _$PlayerWalletCopyWithImpl;
@useResult
$Res call({
 int balancePesos, String? lastDailyTopUpDate
});




}
/// @nodoc
class _$PlayerWalletCopyWithImpl<$Res>
    implements $PlayerWalletCopyWith<$Res> {
  _$PlayerWalletCopyWithImpl(this._self, this._then);

  final PlayerWallet _self;
  final $Res Function(PlayerWallet) _then;

/// Create a copy of PlayerWallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balancePesos = null,Object? lastDailyTopUpDate = freezed,}) {
  return _then(_self.copyWith(
balancePesos: null == balancePesos ? _self.balancePesos : balancePesos // ignore: cast_nullable_to_non_nullable
as int,lastDailyTopUpDate: freezed == lastDailyTopUpDate ? _self.lastDailyTopUpDate : lastDailyTopUpDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerWallet].
extension PlayerWalletPatterns on PlayerWallet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerWallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerWallet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerWallet value)  $default,){
final _that = this;
switch (_that) {
case _PlayerWallet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerWallet value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerWallet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int balancePesos,  String? lastDailyTopUpDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerWallet() when $default != null:
return $default(_that.balancePesos,_that.lastDailyTopUpDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int balancePesos,  String? lastDailyTopUpDate)  $default,) {final _that = this;
switch (_that) {
case _PlayerWallet():
return $default(_that.balancePesos,_that.lastDailyTopUpDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int balancePesos,  String? lastDailyTopUpDate)?  $default,) {final _that = this;
switch (_that) {
case _PlayerWallet() when $default != null:
return $default(_that.balancePesos,_that.lastDailyTopUpDate);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerWallet extends PlayerWallet {
  const _PlayerWallet({required this.balancePesos, this.lastDailyTopUpDate}): super._();
  

@override final  int balancePesos;
/// Día (UTC yyyy-MM-dd) de la última recarga diaria aplicada.
@override final  String? lastDailyTopUpDate;

/// Create a copy of PlayerWallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerWalletCopyWith<_PlayerWallet> get copyWith => __$PlayerWalletCopyWithImpl<_PlayerWallet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerWallet&&(identical(other.balancePesos, balancePesos) || other.balancePesos == balancePesos)&&(identical(other.lastDailyTopUpDate, lastDailyTopUpDate) || other.lastDailyTopUpDate == lastDailyTopUpDate));
}


@override
int get hashCode => Object.hash(runtimeType,balancePesos,lastDailyTopUpDate);

@override
String toString() {
  return 'PlayerWallet(balancePesos: $balancePesos, lastDailyTopUpDate: $lastDailyTopUpDate)';
}


}

/// @nodoc
abstract mixin class _$PlayerWalletCopyWith<$Res> implements $PlayerWalletCopyWith<$Res> {
  factory _$PlayerWalletCopyWith(_PlayerWallet value, $Res Function(_PlayerWallet) _then) = __$PlayerWalletCopyWithImpl;
@override @useResult
$Res call({
 int balancePesos, String? lastDailyTopUpDate
});




}
/// @nodoc
class __$PlayerWalletCopyWithImpl<$Res>
    implements _$PlayerWalletCopyWith<$Res> {
  __$PlayerWalletCopyWithImpl(this._self, this._then);

  final _PlayerWallet _self;
  final $Res Function(_PlayerWallet) _then;

/// Create a copy of PlayerWallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balancePesos = null,Object? lastDailyTopUpDate = freezed,}) {
  return _then(_PlayerWallet(
balancePesos: null == balancePesos ? _self.balancePesos : balancePesos // ignore: cast_nullable_to_non_nullable
as int,lastDailyTopUpDate: freezed == lastDailyTopUpDate ? _self.lastDailyTopUpDate : lastDailyTopUpDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
