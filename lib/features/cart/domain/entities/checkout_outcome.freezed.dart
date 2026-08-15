// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutOutcome {

 CheckoutResult get result; List<Mission> get claimedMissions;
/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutOutcomeCopyWith<CheckoutOutcome> get copyWith => _$CheckoutOutcomeCopyWithImpl<CheckoutOutcome>(this as CheckoutOutcome, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutOutcome&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other.claimedMissions, claimedMissions));
}


@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(claimedMissions));

@override
String toString() {
  return 'CheckoutOutcome(result: $result, claimedMissions: $claimedMissions)';
}


}

/// @nodoc
abstract mixin class $CheckoutOutcomeCopyWith<$Res>  {
  factory $CheckoutOutcomeCopyWith(CheckoutOutcome value, $Res Function(CheckoutOutcome) _then) = _$CheckoutOutcomeCopyWithImpl;
@useResult
$Res call({
 CheckoutResult result, List<Mission> claimedMissions
});


$CheckoutResultCopyWith<$Res> get result;

}
/// @nodoc
class _$CheckoutOutcomeCopyWithImpl<$Res>
    implements $CheckoutOutcomeCopyWith<$Res> {
  _$CheckoutOutcomeCopyWithImpl(this._self, this._then);

  final CheckoutOutcome _self;
  final $Res Function(CheckoutOutcome) _then;

/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? claimedMissions = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as CheckoutResult,claimedMissions: null == claimedMissions ? _self.claimedMissions : claimedMissions // ignore: cast_nullable_to_non_nullable
as List<Mission>,
  ));
}
/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutResultCopyWith<$Res> get result {
  
  return $CheckoutResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutOutcome].
extension CheckoutOutcomePatterns on CheckoutOutcome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutOutcome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutOutcome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutOutcome value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutOutcome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutOutcome value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutOutcome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckoutResult result,  List<Mission> claimedMissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutOutcome() when $default != null:
return $default(_that.result,_that.claimedMissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckoutResult result,  List<Mission> claimedMissions)  $default,) {final _that = this;
switch (_that) {
case _CheckoutOutcome():
return $default(_that.result,_that.claimedMissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckoutResult result,  List<Mission> claimedMissions)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutOutcome() when $default != null:
return $default(_that.result,_that.claimedMissions);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutOutcome implements CheckoutOutcome {
  const _CheckoutOutcome({required this.result, final  List<Mission> claimedMissions = const []}): _claimedMissions = claimedMissions;
  

@override final  CheckoutResult result;
 final  List<Mission> _claimedMissions;
@override@JsonKey() List<Mission> get claimedMissions {
  if (_claimedMissions is EqualUnmodifiableListView) return _claimedMissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_claimedMissions);
}


/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutOutcomeCopyWith<_CheckoutOutcome> get copyWith => __$CheckoutOutcomeCopyWithImpl<_CheckoutOutcome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutOutcome&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other._claimedMissions, _claimedMissions));
}


@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(_claimedMissions));

@override
String toString() {
  return 'CheckoutOutcome(result: $result, claimedMissions: $claimedMissions)';
}


}

/// @nodoc
abstract mixin class _$CheckoutOutcomeCopyWith<$Res> implements $CheckoutOutcomeCopyWith<$Res> {
  factory _$CheckoutOutcomeCopyWith(_CheckoutOutcome value, $Res Function(_CheckoutOutcome) _then) = __$CheckoutOutcomeCopyWithImpl;
@override @useResult
$Res call({
 CheckoutResult result, List<Mission> claimedMissions
});


@override $CheckoutResultCopyWith<$Res> get result;

}
/// @nodoc
class __$CheckoutOutcomeCopyWithImpl<$Res>
    implements _$CheckoutOutcomeCopyWith<$Res> {
  __$CheckoutOutcomeCopyWithImpl(this._self, this._then);

  final _CheckoutOutcome _self;
  final $Res Function(_CheckoutOutcome) _then;

/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? claimedMissions = null,}) {
  return _then(_CheckoutOutcome(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as CheckoutResult,claimedMissions: null == claimedMissions ? _self._claimedMissions : claimedMissions // ignore: cast_nullable_to_non_nullable
as List<Mission>,
  ));
}

/// Create a copy of CheckoutOutcome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutResultCopyWith<$Res> get result {
  
  return $CheckoutResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
