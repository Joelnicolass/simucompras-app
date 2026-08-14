// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchHistoryEntryModel {

 String get query;@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime get searchedAt;
/// Create a copy of SearchHistoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHistoryEntryModelCopyWith<SearchHistoryEntryModel> get copyWith => _$SearchHistoryEntryModelCopyWithImpl<SearchHistoryEntryModel>(this as SearchHistoryEntryModel, _$identity);

  /// Serializes this SearchHistoryEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHistoryEntryModel&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,searchedAt);

@override
String toString() {
  return 'SearchHistoryEntryModel(query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class $SearchHistoryEntryModelCopyWith<$Res>  {
  factory $SearchHistoryEntryModelCopyWith(SearchHistoryEntryModel value, $Res Function(SearchHistoryEntryModel) _then) = _$SearchHistoryEntryModelCopyWithImpl;
@useResult
$Res call({
 String query,@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime searchedAt
});




}
/// @nodoc
class _$SearchHistoryEntryModelCopyWithImpl<$Res>
    implements $SearchHistoryEntryModelCopyWith<$Res> {
  _$SearchHistoryEntryModelCopyWithImpl(this._self, this._then);

  final SearchHistoryEntryModel _self;
  final $Res Function(SearchHistoryEntryModel) _then;

/// Create a copy of SearchHistoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? searchedAt = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,searchedAt: null == searchedAt ? _self.searchedAt : searchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchHistoryEntryModel].
extension SearchHistoryEntryModelPatterns on SearchHistoryEntryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchHistoryEntryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchHistoryEntryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchHistoryEntryModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchHistoryEntryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchHistoryEntryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchHistoryEntryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime searchedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchHistoryEntryModel() when $default != null:
return $default(_that.query,_that.searchedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime searchedAt)  $default,) {final _that = this;
switch (_that) {
case _SearchHistoryEntryModel():
return $default(_that.query,_that.searchedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime searchedAt)?  $default,) {final _that = this;
switch (_that) {
case _SearchHistoryEntryModel() when $default != null:
return $default(_that.query,_that.searchedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchHistoryEntryModel implements SearchHistoryEntryModel {
  const _SearchHistoryEntryModel({required this.query, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) required this.searchedAt});
  factory _SearchHistoryEntryModel.fromJson(Map<String, dynamic> json) => _$SearchHistoryEntryModelFromJson(json);

@override final  String query;
@override@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) final  DateTime searchedAt;

/// Create a copy of SearchHistoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchHistoryEntryModelCopyWith<_SearchHistoryEntryModel> get copyWith => __$SearchHistoryEntryModelCopyWithImpl<_SearchHistoryEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchHistoryEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchHistoryEntryModel&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,searchedAt);

@override
String toString() {
  return 'SearchHistoryEntryModel(query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class _$SearchHistoryEntryModelCopyWith<$Res> implements $SearchHistoryEntryModelCopyWith<$Res> {
  factory _$SearchHistoryEntryModelCopyWith(_SearchHistoryEntryModel value, $Res Function(_SearchHistoryEntryModel) _then) = __$SearchHistoryEntryModelCopyWithImpl;
@override @useResult
$Res call({
 String query,@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime searchedAt
});




}
/// @nodoc
class __$SearchHistoryEntryModelCopyWithImpl<$Res>
    implements _$SearchHistoryEntryModelCopyWith<$Res> {
  __$SearchHistoryEntryModelCopyWithImpl(this._self, this._then);

  final _SearchHistoryEntryModel _self;
  final $Res Function(_SearchHistoryEntryModel) _then;

/// Create a copy of SearchHistoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? searchedAt = null,}) {
  return _then(_SearchHistoryEntryModel(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,searchedAt: null == searchedAt ? _self.searchedAt : searchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
