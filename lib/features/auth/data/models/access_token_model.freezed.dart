// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccessTokenModel {

 String get accessToken; String get tokenType; int get expiresIn;@JsonKey(toJson: _dateTimeToUtcIso) DateTime get expiresAt; bool get cached;
/// Create a copy of AccessTokenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessTokenModelCopyWith<AccessTokenModel> get copyWith => _$AccessTokenModelCopyWithImpl<AccessTokenModel>(this as AccessTokenModel, _$identity);

  /// Serializes this AccessTokenModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessTokenModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.cached, cached) || other.cached == cached));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,expiresAt,cached);

@override
String toString() {
  return 'AccessTokenModel(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt, cached: $cached)';
}


}

/// @nodoc
abstract mixin class $AccessTokenModelCopyWith<$Res>  {
  factory $AccessTokenModelCopyWith(AccessTokenModel value, $Res Function(AccessTokenModel) _then) = _$AccessTokenModelCopyWithImpl;
@useResult
$Res call({
 String accessToken, String tokenType, int expiresIn,@JsonKey(toJson: _dateTimeToUtcIso) DateTime expiresAt, bool cached
});




}
/// @nodoc
class _$AccessTokenModelCopyWithImpl<$Res>
    implements $AccessTokenModelCopyWith<$Res> {
  _$AccessTokenModelCopyWithImpl(this._self, this._then);

  final AccessTokenModel _self;
  final $Res Function(AccessTokenModel) _then;

/// Create a copy of AccessTokenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = null,Object? expiresAt = null,Object? cached = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,cached: null == cached ? _self.cached : cached // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AccessTokenModel].
extension AccessTokenModelPatterns on AccessTokenModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccessTokenModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccessTokenModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccessTokenModel value)  $default,){
final _that = this;
switch (_that) {
case _AccessTokenModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccessTokenModel value)?  $default,){
final _that = this;
switch (_that) {
case _AccessTokenModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String tokenType,  int expiresIn, @JsonKey(toJson: _dateTimeToUtcIso)  DateTime expiresAt,  bool cached)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccessTokenModel() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.cached);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String tokenType,  int expiresIn, @JsonKey(toJson: _dateTimeToUtcIso)  DateTime expiresAt,  bool cached)  $default,) {final _that = this;
switch (_that) {
case _AccessTokenModel():
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.cached);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String tokenType,  int expiresIn, @JsonKey(toJson: _dateTimeToUtcIso)  DateTime expiresAt,  bool cached)?  $default,) {final _that = this;
switch (_that) {
case _AccessTokenModel() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.cached);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AccessTokenModel implements AccessTokenModel {
  const _AccessTokenModel({required this.accessToken, this.tokenType = 'Bearer', required this.expiresIn, @JsonKey(toJson: _dateTimeToUtcIso) required this.expiresAt, this.cached = false});
  factory _AccessTokenModel.fromJson(Map<String, dynamic> json) => _$AccessTokenModelFromJson(json);

@override final  String accessToken;
@override@JsonKey() final  String tokenType;
@override final  int expiresIn;
@override@JsonKey(toJson: _dateTimeToUtcIso) final  DateTime expiresAt;
@override@JsonKey() final  bool cached;

/// Create a copy of AccessTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessTokenModelCopyWith<_AccessTokenModel> get copyWith => __$AccessTokenModelCopyWithImpl<_AccessTokenModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessTokenModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessTokenModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.cached, cached) || other.cached == cached));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,expiresAt,cached);

@override
String toString() {
  return 'AccessTokenModel(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt, cached: $cached)';
}


}

/// @nodoc
abstract mixin class _$AccessTokenModelCopyWith<$Res> implements $AccessTokenModelCopyWith<$Res> {
  factory _$AccessTokenModelCopyWith(_AccessTokenModel value, $Res Function(_AccessTokenModel) _then) = __$AccessTokenModelCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String tokenType, int expiresIn,@JsonKey(toJson: _dateTimeToUtcIso) DateTime expiresAt, bool cached
});




}
/// @nodoc
class __$AccessTokenModelCopyWithImpl<$Res>
    implements _$AccessTokenModelCopyWith<$Res> {
  __$AccessTokenModelCopyWithImpl(this._self, this._then);

  final _AccessTokenModel _self;
  final $Res Function(_AccessTokenModel) _then;

/// Create a copy of AccessTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = null,Object? expiresAt = null,Object? cached = null,}) {
  return _then(_AccessTokenModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,cached: null == cached ? _self.cached : cached // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
