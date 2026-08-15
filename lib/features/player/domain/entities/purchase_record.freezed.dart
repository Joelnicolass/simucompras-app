// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchaseLine {

 String get productId; String get title; String? get thumbnailUrl; double get unitPrice; int get quantity; bool get isSuperOffer;
/// Create a copy of PurchaseLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseLineCopyWith<PurchaseLine> get copyWith => _$PurchaseLineCopyWithImpl<PurchaseLine>(this as PurchaseLine, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseLine&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,quantity,isSuperOffer);

@override
String toString() {
  return 'PurchaseLine(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer)';
}


}

/// @nodoc
abstract mixin class $PurchaseLineCopyWith<$Res>  {
  factory $PurchaseLineCopyWith(PurchaseLine value, $Res Function(PurchaseLine) _then) = _$PurchaseLineCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, int quantity, bool isSuperOffer
});




}
/// @nodoc
class _$PurchaseLineCopyWithImpl<$Res>
    implements $PurchaseLineCopyWith<$Res> {
  _$PurchaseLineCopyWithImpl(this._self, this._then);

  final PurchaseLine _self;
  final $Res Function(PurchaseLine) _then;

/// Create a copy of PurchaseLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? quantity = null,Object? isSuperOffer = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseLine].
extension PurchaseLinePatterns on PurchaseLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseLine value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseLine value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseLine() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer)  $default,) {final _that = this;
switch (_that) {
case _PurchaseLine():
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseLine() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseLine implements PurchaseLine {
  const _PurchaseLine({required this.productId, required this.title, this.thumbnailUrl, required this.unitPrice, required this.quantity, this.isSuperOffer = false});
  

@override final  String productId;
@override final  String title;
@override final  String? thumbnailUrl;
@override final  double unitPrice;
@override final  int quantity;
@override@JsonKey() final  bool isSuperOffer;

/// Create a copy of PurchaseLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseLineCopyWith<_PurchaseLine> get copyWith => __$PurchaseLineCopyWithImpl<_PurchaseLine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseLine&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,quantity,isSuperOffer);

@override
String toString() {
  return 'PurchaseLine(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer)';
}


}

/// @nodoc
abstract mixin class _$PurchaseLineCopyWith<$Res> implements $PurchaseLineCopyWith<$Res> {
  factory _$PurchaseLineCopyWith(_PurchaseLine value, $Res Function(_PurchaseLine) _then) = __$PurchaseLineCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, int quantity, bool isSuperOffer
});




}
/// @nodoc
class __$PurchaseLineCopyWithImpl<$Res>
    implements _$PurchaseLineCopyWith<$Res> {
  __$PurchaseLineCopyWithImpl(this._self, this._then);

  final _PurchaseLine _self;
  final $Res Function(_PurchaseLine) _then;

/// Create a copy of PurchaseLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? quantity = null,Object? isSuperOffer = null,}) {
  return _then(_PurchaseLine(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PurchaseRecord {

 String get id; DateTime get purchasedAt; int get totalPesos; List<PurchaseLine> get lines;
/// Create a copy of PurchaseRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseRecordCopyWith<PurchaseRecord> get copyWith => _$PurchaseRecordCopyWithImpl<PurchaseRecord>(this as PurchaseRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.totalPesos, totalPesos) || other.totalPesos == totalPesos)&&const DeepCollectionEquality().equals(other.lines, lines));
}


@override
int get hashCode => Object.hash(runtimeType,id,purchasedAt,totalPesos,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'PurchaseRecord(id: $id, purchasedAt: $purchasedAt, totalPesos: $totalPesos, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $PurchaseRecordCopyWith<$Res>  {
  factory $PurchaseRecordCopyWith(PurchaseRecord value, $Res Function(PurchaseRecord) _then) = _$PurchaseRecordCopyWithImpl;
@useResult
$Res call({
 String id, DateTime purchasedAt, int totalPesos, List<PurchaseLine> lines
});




}
/// @nodoc
class _$PurchaseRecordCopyWithImpl<$Res>
    implements $PurchaseRecordCopyWith<$Res> {
  _$PurchaseRecordCopyWithImpl(this._self, this._then);

  final PurchaseRecord _self;
  final $Res Function(PurchaseRecord) _then;

/// Create a copy of PurchaseRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? purchasedAt = null,Object? totalPesos = null,Object? lines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPesos: null == totalPesos ? _self.totalPesos : totalPesos // ignore: cast_nullable_to_non_nullable
as int,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseLine>,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseRecord].
extension PurchaseRecordPatterns on PurchaseRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseRecord value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseRecord value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime purchasedAt,  int totalPesos,  List<PurchaseLine> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseRecord() when $default != null:
return $default(_that.id,_that.purchasedAt,_that.totalPesos,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime purchasedAt,  int totalPesos,  List<PurchaseLine> lines)  $default,) {final _that = this;
switch (_that) {
case _PurchaseRecord():
return $default(_that.id,_that.purchasedAt,_that.totalPesos,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime purchasedAt,  int totalPesos,  List<PurchaseLine> lines)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseRecord() when $default != null:
return $default(_that.id,_that.purchasedAt,_that.totalPesos,_that.lines);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseRecord extends PurchaseRecord {
  const _PurchaseRecord({required this.id, required this.purchasedAt, required this.totalPesos, required final  List<PurchaseLine> lines}): _lines = lines,super._();
  

@override final  String id;
@override final  DateTime purchasedAt;
@override final  int totalPesos;
 final  List<PurchaseLine> _lines;
@override List<PurchaseLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of PurchaseRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseRecordCopyWith<_PurchaseRecord> get copyWith => __$PurchaseRecordCopyWithImpl<_PurchaseRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.totalPesos, totalPesos) || other.totalPesos == totalPesos)&&const DeepCollectionEquality().equals(other._lines, _lines));
}


@override
int get hashCode => Object.hash(runtimeType,id,purchasedAt,totalPesos,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'PurchaseRecord(id: $id, purchasedAt: $purchasedAt, totalPesos: $totalPesos, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$PurchaseRecordCopyWith<$Res> implements $PurchaseRecordCopyWith<$Res> {
  factory _$PurchaseRecordCopyWith(_PurchaseRecord value, $Res Function(_PurchaseRecord) _then) = __$PurchaseRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime purchasedAt, int totalPesos, List<PurchaseLine> lines
});




}
/// @nodoc
class __$PurchaseRecordCopyWithImpl<$Res>
    implements _$PurchaseRecordCopyWith<$Res> {
  __$PurchaseRecordCopyWithImpl(this._self, this._then);

  final _PurchaseRecord _self;
  final $Res Function(_PurchaseRecord) _then;

/// Create a copy of PurchaseRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? purchasedAt = null,Object? totalPesos = null,Object? lines = null,}) {
  return _then(_PurchaseRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPesos: null == totalPesos ? _self.totalPesos : totalPesos // ignore: cast_nullable_to_non_nullable
as int,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseLine>,
  ));
}


}

// dart format on
