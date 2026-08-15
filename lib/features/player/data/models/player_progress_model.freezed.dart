// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_progress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerProgressModel {

 int get xp;
/// Create a copy of PlayerProgressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerProgressModelCopyWith<PlayerProgressModel> get copyWith => _$PlayerProgressModelCopyWithImpl<PlayerProgressModel>(this as PlayerProgressModel, _$identity);

  /// Serializes this PlayerProgressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerProgressModel&&(identical(other.xp, xp) || other.xp == xp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xp);

@override
String toString() {
  return 'PlayerProgressModel(xp: $xp)';
}


}

/// @nodoc
abstract mixin class $PlayerProgressModelCopyWith<$Res>  {
  factory $PlayerProgressModelCopyWith(PlayerProgressModel value, $Res Function(PlayerProgressModel) _then) = _$PlayerProgressModelCopyWithImpl;
@useResult
$Res call({
 int xp
});




}
/// @nodoc
class _$PlayerProgressModelCopyWithImpl<$Res>
    implements $PlayerProgressModelCopyWith<$Res> {
  _$PlayerProgressModelCopyWithImpl(this._self, this._then);

  final PlayerProgressModel _self;
  final $Res Function(PlayerProgressModel) _then;

/// Create a copy of PlayerProgressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xp = null,}) {
  return _then(_self.copyWith(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerProgressModel].
extension PlayerProgressModelPatterns on PlayerProgressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerProgressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerProgressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerProgressModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerProgressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerProgressModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerProgressModel() when $default != null:
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
case _PlayerProgressModel() when $default != null:
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
case _PlayerProgressModel():
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
case _PlayerProgressModel() when $default != null:
return $default(_that.xp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerProgressModel implements PlayerProgressModel {
  const _PlayerProgressModel({this.xp = 0});
  factory _PlayerProgressModel.fromJson(Map<String, dynamic> json) => _$PlayerProgressModelFromJson(json);

@override@JsonKey() final  int xp;

/// Create a copy of PlayerProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerProgressModelCopyWith<_PlayerProgressModel> get copyWith => __$PlayerProgressModelCopyWithImpl<_PlayerProgressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerProgressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerProgressModel&&(identical(other.xp, xp) || other.xp == xp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xp);

@override
String toString() {
  return 'PlayerProgressModel(xp: $xp)';
}


}

/// @nodoc
abstract mixin class _$PlayerProgressModelCopyWith<$Res> implements $PlayerProgressModelCopyWith<$Res> {
  factory _$PlayerProgressModelCopyWith(_PlayerProgressModel value, $Res Function(_PlayerProgressModel) _then) = __$PlayerProgressModelCopyWithImpl;
@override @useResult
$Res call({
 int xp
});




}
/// @nodoc
class __$PlayerProgressModelCopyWithImpl<$Res>
    implements _$PlayerProgressModelCopyWith<$Res> {
  __$PlayerProgressModelCopyWithImpl(this._self, this._then);

  final _PlayerProgressModel _self;
  final $Res Function(_PlayerProgressModel) _then;

/// Create a copy of PlayerProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xp = null,}) {
  return _then(_PlayerProgressModel(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
