// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseLineModel {

 String get productId; String get title; String? get thumbnailUrl; double get unitPrice; int get quantity; bool get isSuperOffer; String? get categoryId; int get soldQuantity;
/// Create a copy of PurchaseLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseLineModelCopyWith<PurchaseLineModel> get copyWith => _$PurchaseLineModelCopyWithImpl<PurchaseLineModel>(this as PurchaseLineModel, _$identity);

  /// Serializes this PurchaseLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.soldQuantity, soldQuantity) || other.soldQuantity == soldQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,quantity,isSuperOffer,categoryId,soldQuantity);

@override
String toString() {
  return 'PurchaseLineModel(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer, categoryId: $categoryId, soldQuantity: $soldQuantity)';
}


}

/// @nodoc
abstract mixin class $PurchaseLineModelCopyWith<$Res>  {
  factory $PurchaseLineModelCopyWith(PurchaseLineModel value, $Res Function(PurchaseLineModel) _then) = _$PurchaseLineModelCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, int quantity, bool isSuperOffer, String? categoryId, int soldQuantity
});




}
/// @nodoc
class _$PurchaseLineModelCopyWithImpl<$Res>
    implements $PurchaseLineModelCopyWith<$Res> {
  _$PurchaseLineModelCopyWithImpl(this._self, this._then);

  final PurchaseLineModel _self;
  final $Res Function(PurchaseLineModel) _then;

/// Create a copy of PurchaseLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? quantity = null,Object? isSuperOffer = null,Object? categoryId = freezed,Object? soldQuantity = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,soldQuantity: null == soldQuantity ? _self.soldQuantity : soldQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseLineModel].
extension PurchaseLineModelPatterns on PurchaseLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseLineModel value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseLineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer,  String? categoryId,  int soldQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId,_that.soldQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer,  String? categoryId,  int soldQuantity)  $default,) {final _that = this;
switch (_that) {
case _PurchaseLineModel():
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId,_that.soldQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String? thumbnailUrl,  double unitPrice,  int quantity,  bool isSuperOffer,  String? categoryId,  int soldQuantity)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.thumbnailUrl,_that.unitPrice,_that.quantity,_that.isSuperOffer,_that.categoryId,_that.soldQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseLineModel implements PurchaseLineModel {
  const _PurchaseLineModel({required this.productId, required this.title, this.thumbnailUrl, required this.unitPrice, required this.quantity, this.isSuperOffer = false, this.categoryId, this.soldQuantity = 0});
  factory _PurchaseLineModel.fromJson(Map<String, dynamic> json) => _$PurchaseLineModelFromJson(json);

@override final  String productId;
@override final  String title;
@override final  String? thumbnailUrl;
@override final  double unitPrice;
@override final  int quantity;
@override@JsonKey() final  bool isSuperOffer;
@override final  String? categoryId;
@override@JsonKey() final  int soldQuantity;

/// Create a copy of PurchaseLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseLineModelCopyWith<_PurchaseLineModel> get copyWith => __$PurchaseLineModelCopyWithImpl<_PurchaseLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.soldQuantity, soldQuantity) || other.soldQuantity == soldQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,thumbnailUrl,unitPrice,quantity,isSuperOffer,categoryId,soldQuantity);

@override
String toString() {
  return 'PurchaseLineModel(productId: $productId, title: $title, thumbnailUrl: $thumbnailUrl, unitPrice: $unitPrice, quantity: $quantity, isSuperOffer: $isSuperOffer, categoryId: $categoryId, soldQuantity: $soldQuantity)';
}


}

/// @nodoc
abstract mixin class _$PurchaseLineModelCopyWith<$Res> implements $PurchaseLineModelCopyWith<$Res> {
  factory _$PurchaseLineModelCopyWith(_PurchaseLineModel value, $Res Function(_PurchaseLineModel) _then) = __$PurchaseLineModelCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String? thumbnailUrl, double unitPrice, int quantity, bool isSuperOffer, String? categoryId, int soldQuantity
});




}
/// @nodoc
class __$PurchaseLineModelCopyWithImpl<$Res>
    implements _$PurchaseLineModelCopyWith<$Res> {
  __$PurchaseLineModelCopyWithImpl(this._self, this._then);

  final _PurchaseLineModel _self;
  final $Res Function(_PurchaseLineModel) _then;

/// Create a copy of PurchaseLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? thumbnailUrl = freezed,Object? unitPrice = null,Object? quantity = null,Object? isSuperOffer = null,Object? categoryId = freezed,Object? soldQuantity = null,}) {
  return _then(_PurchaseLineModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,soldQuantity: null == soldQuantity ? _self.soldQuantity : soldQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PurchaseRecordModel {

 String get id;@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime get purchasedAt; int get totalPesos; List<PurchaseLineModel> get lines;
/// Create a copy of PurchaseRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseRecordModelCopyWith<PurchaseRecordModel> get copyWith => _$PurchaseRecordModelCopyWithImpl<PurchaseRecordModel>(this as PurchaseRecordModel, _$identity);

  /// Serializes this PurchaseRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.totalPesos, totalPesos) || other.totalPesos == totalPesos)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purchasedAt,totalPesos,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'PurchaseRecordModel(id: $id, purchasedAt: $purchasedAt, totalPesos: $totalPesos, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $PurchaseRecordModelCopyWith<$Res>  {
  factory $PurchaseRecordModelCopyWith(PurchaseRecordModel value, $Res Function(PurchaseRecordModel) _then) = _$PurchaseRecordModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime purchasedAt, int totalPesos, List<PurchaseLineModel> lines
});




}
/// @nodoc
class _$PurchaseRecordModelCopyWithImpl<$Res>
    implements $PurchaseRecordModelCopyWith<$Res> {
  _$PurchaseRecordModelCopyWithImpl(this._self, this._then);

  final PurchaseRecordModel _self;
  final $Res Function(PurchaseRecordModel) _then;

/// Create a copy of PurchaseRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? purchasedAt = null,Object? totalPesos = null,Object? lines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPesos: null == totalPesos ? _self.totalPesos : totalPesos // ignore: cast_nullable_to_non_nullable
as int,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseLineModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseRecordModel].
extension PurchaseRecordModelPatterns on PurchaseRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime purchasedAt,  int totalPesos,  List<PurchaseLineModel> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseRecordModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime purchasedAt,  int totalPesos,  List<PurchaseLineModel> lines)  $default,) {final _that = this;
switch (_that) {
case _PurchaseRecordModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)  DateTime purchasedAt,  int totalPesos,  List<PurchaseLineModel> lines)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseRecordModel() when $default != null:
return $default(_that.id,_that.purchasedAt,_that.totalPesos,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseRecordModel implements PurchaseRecordModel {
  const _PurchaseRecordModel({required this.id, @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) required this.purchasedAt, required this.totalPesos, required final  List<PurchaseLineModel> lines}): _lines = lines;
  factory _PurchaseRecordModel.fromJson(Map<String, dynamic> json) => _$PurchaseRecordModelFromJson(json);

@override final  String id;
@override@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) final  DateTime purchasedAt;
@override final  int totalPesos;
 final  List<PurchaseLineModel> _lines;
@override List<PurchaseLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of PurchaseRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseRecordModelCopyWith<_PurchaseRecordModel> get copyWith => __$PurchaseRecordModelCopyWithImpl<_PurchaseRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.totalPesos, totalPesos) || other.totalPesos == totalPesos)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purchasedAt,totalPesos,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'PurchaseRecordModel(id: $id, purchasedAt: $purchasedAt, totalPesos: $totalPesos, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$PurchaseRecordModelCopyWith<$Res> implements $PurchaseRecordModelCopyWith<$Res> {
  factory _$PurchaseRecordModelCopyWith(_PurchaseRecordModel value, $Res Function(_PurchaseRecordModel) _then) = __$PurchaseRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso) DateTime purchasedAt, int totalPesos, List<PurchaseLineModel> lines
});




}
/// @nodoc
class __$PurchaseRecordModelCopyWithImpl<$Res>
    implements _$PurchaseRecordModelCopyWith<$Res> {
  __$PurchaseRecordModelCopyWithImpl(this._self, this._then);

  final _PurchaseRecordModel _self;
  final $Res Function(_PurchaseRecordModel) _then;

/// Create a copy of PurchaseRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? purchasedAt = null,Object? totalPesos = null,Object? lines = null,}) {
  return _then(_PurchaseRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPesos: null == totalPesos ? _self.totalPesos : totalPesos // ignore: cast_nullable_to_non_nullable
as int,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseLineModel>,
  ));
}


}

// dart format on
