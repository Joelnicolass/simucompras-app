// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerWalletModel {

 int get balancePesos; String? get lastDailyTopUpDate;
/// Create a copy of PlayerWalletModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerWalletModelCopyWith<PlayerWalletModel> get copyWith => _$PlayerWalletModelCopyWithImpl<PlayerWalletModel>(this as PlayerWalletModel, _$identity);

  /// Serializes this PlayerWalletModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerWalletModel&&(identical(other.balancePesos, balancePesos) || other.balancePesos == balancePesos)&&(identical(other.lastDailyTopUpDate, lastDailyTopUpDate) || other.lastDailyTopUpDate == lastDailyTopUpDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePesos,lastDailyTopUpDate);

@override
String toString() {
  return 'PlayerWalletModel(balancePesos: $balancePesos, lastDailyTopUpDate: $lastDailyTopUpDate)';
}


}

/// @nodoc
abstract mixin class $PlayerWalletModelCopyWith<$Res>  {
  factory $PlayerWalletModelCopyWith(PlayerWalletModel value, $Res Function(PlayerWalletModel) _then) = _$PlayerWalletModelCopyWithImpl;
@useResult
$Res call({
 int balancePesos, String? lastDailyTopUpDate
});




}
/// @nodoc
class _$PlayerWalletModelCopyWithImpl<$Res>
    implements $PlayerWalletModelCopyWith<$Res> {
  _$PlayerWalletModelCopyWithImpl(this._self, this._then);

  final PlayerWalletModel _self;
  final $Res Function(PlayerWalletModel) _then;

/// Create a copy of PlayerWalletModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balancePesos = null,Object? lastDailyTopUpDate = freezed,}) {
  return _then(_self.copyWith(
balancePesos: null == balancePesos ? _self.balancePesos : balancePesos // ignore: cast_nullable_to_non_nullable
as int,lastDailyTopUpDate: freezed == lastDailyTopUpDate ? _self.lastDailyTopUpDate : lastDailyTopUpDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerWalletModel].
extension PlayerWalletModelPatterns on PlayerWalletModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerWalletModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerWalletModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerWalletModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerWalletModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerWalletModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerWalletModel() when $default != null:
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
case _PlayerWalletModel() when $default != null:
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
case _PlayerWalletModel():
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
case _PlayerWalletModel() when $default != null:
return $default(_that.balancePesos,_that.lastDailyTopUpDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerWalletModel implements PlayerWalletModel {
  const _PlayerWalletModel({required this.balancePesos, this.lastDailyTopUpDate});
  factory _PlayerWalletModel.fromJson(Map<String, dynamic> json) => _$PlayerWalletModelFromJson(json);

@override final  int balancePesos;
@override final  String? lastDailyTopUpDate;

/// Create a copy of PlayerWalletModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerWalletModelCopyWith<_PlayerWalletModel> get copyWith => __$PlayerWalletModelCopyWithImpl<_PlayerWalletModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerWalletModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerWalletModel&&(identical(other.balancePesos, balancePesos) || other.balancePesos == balancePesos)&&(identical(other.lastDailyTopUpDate, lastDailyTopUpDate) || other.lastDailyTopUpDate == lastDailyTopUpDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePesos,lastDailyTopUpDate);

@override
String toString() {
  return 'PlayerWalletModel(balancePesos: $balancePesos, lastDailyTopUpDate: $lastDailyTopUpDate)';
}


}

/// @nodoc
abstract mixin class _$PlayerWalletModelCopyWith<$Res> implements $PlayerWalletModelCopyWith<$Res> {
  factory _$PlayerWalletModelCopyWith(_PlayerWalletModel value, $Res Function(_PlayerWalletModel) _then) = __$PlayerWalletModelCopyWithImpl;
@override @useResult
$Res call({
 int balancePesos, String? lastDailyTopUpDate
});




}
/// @nodoc
class __$PlayerWalletModelCopyWithImpl<$Res>
    implements _$PlayerWalletModelCopyWith<$Res> {
  __$PlayerWalletModelCopyWithImpl(this._self, this._then);

  final _PlayerWalletModel _self;
  final $Res Function(_PlayerWalletModel) _then;

/// Create a copy of PlayerWalletModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balancePesos = null,Object? lastDailyTopUpDate = freezed,}) {
  return _then(_PlayerWalletModel(
balancePesos: null == balancePesos ? _self.balancePesos : balancePesos // ignore: cast_nullable_to_non_nullable
as int,lastDailyTopUpDate: freezed == lastDailyTopUpDate ? _self.lastDailyTopUpDate : lastDailyTopUpDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
