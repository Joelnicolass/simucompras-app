// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerProgress {

 int get xp;
/// Create a copy of PlayerProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerProgressCopyWith<PlayerProgress> get copyWith => _$PlayerProgressCopyWithImpl<PlayerProgress>(this as PlayerProgress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerProgress&&(identical(other.xp, xp) || other.xp == xp));
}


@override
int get hashCode => Object.hash(runtimeType,xp);

@override
String toString() {
  return 'PlayerProgress(xp: $xp)';
}


}

/// @nodoc
abstract mixin class $PlayerProgressCopyWith<$Res>  {
  factory $PlayerProgressCopyWith(PlayerProgress value, $Res Function(PlayerProgress) _then) = _$PlayerProgressCopyWithImpl;
@useResult
$Res call({
 int xp
});




}
/// @nodoc
class _$PlayerProgressCopyWithImpl<$Res>
    implements $PlayerProgressCopyWith<$Res> {
  _$PlayerProgressCopyWithImpl(this._self, this._then);

  final PlayerProgress _self;
  final $Res Function(PlayerProgress) _then;

/// Create a copy of PlayerProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xp = null,}) {
  return _then(_self.copyWith(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerProgress].
extension PlayerProgressPatterns on PlayerProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerProgress value)  $default,){
final _that = this;
switch (_that) {
case _PlayerProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerProgress value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int xp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerProgress() when $default != null:
return $default(_that.xp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int xp)  $default,) {final _that = this;
switch (_that) {
case _PlayerProgress():
return $default(_that.xp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int xp)?  $default,) {final _that = this;
switch (_that) {
case _PlayerProgress() when $default != null:
return $default(_that.xp);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerProgress implements PlayerProgress {
  const _PlayerProgress({this.xp = 0});
  

@override@JsonKey() final  int xp;

/// Create a copy of PlayerProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerProgressCopyWith<_PlayerProgress> get copyWith => __$PlayerProgressCopyWithImpl<_PlayerProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerProgress&&(identical(other.xp, xp) || other.xp == xp));
}


@override
int get hashCode => Object.hash(runtimeType,xp);

@override
String toString() {
  return 'PlayerProgress(xp: $xp)';
}


}

/// @nodoc
abstract mixin class _$PlayerProgressCopyWith<$Res> implements $PlayerProgressCopyWith<$Res> {
  factory _$PlayerProgressCopyWith(_PlayerProgress value, $Res Function(_PlayerProgress) _then) = __$PlayerProgressCopyWithImpl;
@override @useResult
$Res call({
 int xp
});




}
/// @nodoc
class __$PlayerProgressCopyWithImpl<$Res>
    implements _$PlayerProgressCopyWith<$Res> {
  __$PlayerProgressCopyWithImpl(this._self, this._then);

  final _PlayerProgress _self;
  final $Res Function(_PlayerProgress) _then;

/// Create a copy of PlayerProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xp = null,}) {
  return _then(_PlayerProgress(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
