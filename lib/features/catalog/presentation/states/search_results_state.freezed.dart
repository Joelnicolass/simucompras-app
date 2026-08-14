// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchResultsState {

 List<CatalogProduct> get products;/// true si quedan páginas de catálogo por pedir.
 bool get hasMore;
/// Create a copy of SearchResultsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultsStateCopyWith<SearchResultsState> get copyWith => _$SearchResultsStateCopyWithImpl<SearchResultsState>(this as SearchResultsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultsState&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),hasMore);

@override
String toString() {
  return 'SearchResultsState(products: $products, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $SearchResultsStateCopyWith<$Res>  {
  factory $SearchResultsStateCopyWith(SearchResultsState value, $Res Function(SearchResultsState) _then) = _$SearchResultsStateCopyWithImpl;
@useResult
$Res call({
 List<CatalogProduct> products, bool hasMore
});




}
/// @nodoc
class _$SearchResultsStateCopyWithImpl<$Res>
    implements $SearchResultsStateCopyWith<$Res> {
  _$SearchResultsStateCopyWithImpl(this._self, this._then);

  final SearchResultsState _self;
  final $Res Function(SearchResultsState) _then;

/// Create a copy of SearchResultsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CatalogProduct>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResultsState].
extension SearchResultsStatePatterns on SearchResultsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultsState value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultsState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CatalogProduct> products,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultsState() when $default != null:
return $default(_that.products,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CatalogProduct> products,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _SearchResultsState():
return $default(_that.products,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CatalogProduct> products,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultsState() when $default != null:
return $default(_that.products,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResultsState implements SearchResultsState {
  const _SearchResultsState({required final  List<CatalogProduct> products, required this.hasMore}): _products = products;
  

 final  List<CatalogProduct> _products;
@override List<CatalogProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

/// true si quedan páginas de catálogo por pedir.
@override final  bool hasMore;

/// Create a copy of SearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultsStateCopyWith<_SearchResultsState> get copyWith => __$SearchResultsStateCopyWithImpl<_SearchResultsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultsState&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),hasMore);

@override
String toString() {
  return 'SearchResultsState(products: $products, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$SearchResultsStateCopyWith<$Res> implements $SearchResultsStateCopyWith<$Res> {
  factory _$SearchResultsStateCopyWith(_SearchResultsState value, $Res Function(_SearchResultsState) _then) = __$SearchResultsStateCopyWithImpl;
@override @useResult
$Res call({
 List<CatalogProduct> products, bool hasMore
});




}
/// @nodoc
class __$SearchResultsStateCopyWithImpl<$Res>
    implements _$SearchResultsStateCopyWith<$Res> {
  __$SearchResultsStateCopyWithImpl(this._self, this._then);

  final _SearchResultsState _self;
  final $Res Function(_SearchResultsState) _then;

/// Create a copy of SearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? hasMore = null,}) {
  return _then(_SearchResultsState(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CatalogProduct>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
