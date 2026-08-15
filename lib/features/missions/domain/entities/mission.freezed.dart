// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Mission {

 String get id; String get title; String get description; int get rewardPesos; MissionStatus get status;
/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionCopyWith<Mission> get copyWith => _$MissionCopyWithImpl<Mission>(this as Mission, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mission&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission(id: $id, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $MissionCopyWith<$Res>  {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) _then) = _$MissionCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$MissionCopyWithImpl<$Res>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._self, this._then);

  final Mission _self;
  final $Res Function(Mission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [Mission].
extension MissionPatterns on Mission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BuyCategoryMission value)?  buyCategory,TResult Function( FindSuperOfferMission value)?  findSuperOffer,TResult Function( BuyExpensiveMission value)?  buyExpensive,TResult Function( BuyCheapDealMission value)?  buyCheapDeal,TResult Function( BuyKeywordMission value)?  buyKeyword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BuyCategoryMission() when buyCategory != null:
return buyCategory(_that);case FindSuperOfferMission() when findSuperOffer != null:
return findSuperOffer(_that);case BuyExpensiveMission() when buyExpensive != null:
return buyExpensive(_that);case BuyCheapDealMission() when buyCheapDeal != null:
return buyCheapDeal(_that);case BuyKeywordMission() when buyKeyword != null:
return buyKeyword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BuyCategoryMission value)  buyCategory,required TResult Function( FindSuperOfferMission value)  findSuperOffer,required TResult Function( BuyExpensiveMission value)  buyExpensive,required TResult Function( BuyCheapDealMission value)  buyCheapDeal,required TResult Function( BuyKeywordMission value)  buyKeyword,}){
final _that = this;
switch (_that) {
case BuyCategoryMission():
return buyCategory(_that);case FindSuperOfferMission():
return findSuperOffer(_that);case BuyExpensiveMission():
return buyExpensive(_that);case BuyCheapDealMission():
return buyCheapDeal(_that);case BuyKeywordMission():
return buyKeyword(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BuyCategoryMission value)?  buyCategory,TResult? Function( FindSuperOfferMission value)?  findSuperOffer,TResult? Function( BuyExpensiveMission value)?  buyExpensive,TResult? Function( BuyCheapDealMission value)?  buyCheapDeal,TResult? Function( BuyKeywordMission value)?  buyKeyword,}){
final _that = this;
switch (_that) {
case BuyCategoryMission() when buyCategory != null:
return buyCategory(_that);case FindSuperOfferMission() when findSuperOffer != null:
return findSuperOffer(_that);case BuyExpensiveMission() when buyExpensive != null:
return buyExpensive(_that);case BuyCheapDealMission() when buyCheapDeal != null:
return buyCheapDeal(_that);case BuyKeywordMission() when buyKeyword != null:
return buyKeyword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String categoryId,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyCategory,TResult Function( String id,  String title,  String description,  int rewardPesos,  MissionStatus status)?  findSuperOffer,TResult Function( String id,  int minPrice,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyExpensive,TResult Function( String id,  double minDiscount,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyCheapDeal,TResult Function( String id,  String keyword,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyKeyword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BuyCategoryMission() when buyCategory != null:
return buyCategory(_that.id,_that.categoryId,_that.title,_that.description,_that.rewardPesos,_that.status);case FindSuperOfferMission() when findSuperOffer != null:
return findSuperOffer(_that.id,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyExpensiveMission() when buyExpensive != null:
return buyExpensive(_that.id,_that.minPrice,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyCheapDealMission() when buyCheapDeal != null:
return buyCheapDeal(_that.id,_that.minDiscount,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyKeywordMission() when buyKeyword != null:
return buyKeyword(_that.id,_that.keyword,_that.title,_that.description,_that.rewardPesos,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String categoryId,  String title,  String description,  int rewardPesos,  MissionStatus status)  buyCategory,required TResult Function( String id,  String title,  String description,  int rewardPesos,  MissionStatus status)  findSuperOffer,required TResult Function( String id,  int minPrice,  String title,  String description,  int rewardPesos,  MissionStatus status)  buyExpensive,required TResult Function( String id,  double minDiscount,  String title,  String description,  int rewardPesos,  MissionStatus status)  buyCheapDeal,required TResult Function( String id,  String keyword,  String title,  String description,  int rewardPesos,  MissionStatus status)  buyKeyword,}) {final _that = this;
switch (_that) {
case BuyCategoryMission():
return buyCategory(_that.id,_that.categoryId,_that.title,_that.description,_that.rewardPesos,_that.status);case FindSuperOfferMission():
return findSuperOffer(_that.id,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyExpensiveMission():
return buyExpensive(_that.id,_that.minPrice,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyCheapDealMission():
return buyCheapDeal(_that.id,_that.minDiscount,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyKeywordMission():
return buyKeyword(_that.id,_that.keyword,_that.title,_that.description,_that.rewardPesos,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String categoryId,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyCategory,TResult? Function( String id,  String title,  String description,  int rewardPesos,  MissionStatus status)?  findSuperOffer,TResult? Function( String id,  int minPrice,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyExpensive,TResult? Function( String id,  double minDiscount,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyCheapDeal,TResult? Function( String id,  String keyword,  String title,  String description,  int rewardPesos,  MissionStatus status)?  buyKeyword,}) {final _that = this;
switch (_that) {
case BuyCategoryMission() when buyCategory != null:
return buyCategory(_that.id,_that.categoryId,_that.title,_that.description,_that.rewardPesos,_that.status);case FindSuperOfferMission() when findSuperOffer != null:
return findSuperOffer(_that.id,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyExpensiveMission() when buyExpensive != null:
return buyExpensive(_that.id,_that.minPrice,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyCheapDealMission() when buyCheapDeal != null:
return buyCheapDeal(_that.id,_that.minDiscount,_that.title,_that.description,_that.rewardPesos,_that.status);case BuyKeywordMission() when buyKeyword != null:
return buyKeyword(_that.id,_that.keyword,_that.title,_that.description,_that.rewardPesos,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class BuyCategoryMission extends Mission {
  const BuyCategoryMission({required this.id, required this.categoryId, required this.title, required this.description, required this.rewardPesos, this.status = MissionStatus.active}): super._();
  

@override final  String id;
 final  String categoryId;
@override final  String title;
@override final  String description;
@override final  int rewardPesos;
@override@JsonKey() final  MissionStatus status;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyCategoryMissionCopyWith<BuyCategoryMission> get copyWith => _$BuyCategoryMissionCopyWithImpl<BuyCategoryMission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyCategoryMission&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,categoryId,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission.buyCategory(id: $id, categoryId: $categoryId, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $BuyCategoryMissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory $BuyCategoryMissionCopyWith(BuyCategoryMission value, $Res Function(BuyCategoryMission) _then) = _$BuyCategoryMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, String categoryId, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$BuyCategoryMissionCopyWithImpl<$Res>
    implements $BuyCategoryMissionCopyWith<$Res> {
  _$BuyCategoryMissionCopyWithImpl(this._self, this._then);

  final BuyCategoryMission _self;
  final $Res Function(BuyCategoryMission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(BuyCategoryMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}


}

/// @nodoc


class FindSuperOfferMission extends Mission {
  const FindSuperOfferMission({required this.id, required this.title, required this.description, required this.rewardPesos, this.status = MissionStatus.active}): super._();
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  int rewardPesos;
@override@JsonKey() final  MissionStatus status;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindSuperOfferMissionCopyWith<FindSuperOfferMission> get copyWith => _$FindSuperOfferMissionCopyWithImpl<FindSuperOfferMission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindSuperOfferMission&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission.findSuperOffer(id: $id, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $FindSuperOfferMissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory $FindSuperOfferMissionCopyWith(FindSuperOfferMission value, $Res Function(FindSuperOfferMission) _then) = _$FindSuperOfferMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$FindSuperOfferMissionCopyWithImpl<$Res>
    implements $FindSuperOfferMissionCopyWith<$Res> {
  _$FindSuperOfferMissionCopyWithImpl(this._self, this._then);

  final FindSuperOfferMission _self;
  final $Res Function(FindSuperOfferMission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(FindSuperOfferMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}


}

/// @nodoc


class BuyExpensiveMission extends Mission {
  const BuyExpensiveMission({required this.id, required this.minPrice, required this.title, required this.description, required this.rewardPesos, this.status = MissionStatus.active}): super._();
  

@override final  String id;
 final  int minPrice;
@override final  String title;
@override final  String description;
@override final  int rewardPesos;
@override@JsonKey() final  MissionStatus status;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyExpensiveMissionCopyWith<BuyExpensiveMission> get copyWith => _$BuyExpensiveMissionCopyWithImpl<BuyExpensiveMission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyExpensiveMission&&(identical(other.id, id) || other.id == id)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,minPrice,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission.buyExpensive(id: $id, minPrice: $minPrice, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $BuyExpensiveMissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory $BuyExpensiveMissionCopyWith(BuyExpensiveMission value, $Res Function(BuyExpensiveMission) _then) = _$BuyExpensiveMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, int minPrice, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$BuyExpensiveMissionCopyWithImpl<$Res>
    implements $BuyExpensiveMissionCopyWith<$Res> {
  _$BuyExpensiveMissionCopyWithImpl(this._self, this._then);

  final BuyExpensiveMission _self;
  final $Res Function(BuyExpensiveMission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? minPrice = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(BuyExpensiveMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,minPrice: null == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}


}

/// @nodoc


class BuyCheapDealMission extends Mission {
  const BuyCheapDealMission({required this.id, required this.minDiscount, required this.title, required this.description, required this.rewardPesos, this.status = MissionStatus.active}): super._();
  

@override final  String id;
 final  double minDiscount;
@override final  String title;
@override final  String description;
@override final  int rewardPesos;
@override@JsonKey() final  MissionStatus status;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyCheapDealMissionCopyWith<BuyCheapDealMission> get copyWith => _$BuyCheapDealMissionCopyWithImpl<BuyCheapDealMission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyCheapDealMission&&(identical(other.id, id) || other.id == id)&&(identical(other.minDiscount, minDiscount) || other.minDiscount == minDiscount)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,minDiscount,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission.buyCheapDeal(id: $id, minDiscount: $minDiscount, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $BuyCheapDealMissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory $BuyCheapDealMissionCopyWith(BuyCheapDealMission value, $Res Function(BuyCheapDealMission) _then) = _$BuyCheapDealMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, double minDiscount, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$BuyCheapDealMissionCopyWithImpl<$Res>
    implements $BuyCheapDealMissionCopyWith<$Res> {
  _$BuyCheapDealMissionCopyWithImpl(this._self, this._then);

  final BuyCheapDealMission _self;
  final $Res Function(BuyCheapDealMission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? minDiscount = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(BuyCheapDealMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,minDiscount: null == minDiscount ? _self.minDiscount : minDiscount // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}


}

/// @nodoc


class BuyKeywordMission extends Mission {
  const BuyKeywordMission({required this.id, required this.keyword, required this.title, required this.description, required this.rewardPesos, this.status = MissionStatus.active}): super._();
  

@override final  String id;
 final  String keyword;
@override final  String title;
@override final  String description;
@override final  int rewardPesos;
@override@JsonKey() final  MissionStatus status;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyKeywordMissionCopyWith<BuyKeywordMission> get copyWith => _$BuyKeywordMissionCopyWithImpl<BuyKeywordMission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyKeywordMission&&(identical(other.id, id) || other.id == id)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,keyword,title,description,rewardPesos,status);

@override
String toString() {
  return 'Mission.buyKeyword(id: $id, keyword: $keyword, title: $title, description: $description, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $BuyKeywordMissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory $BuyKeywordMissionCopyWith(BuyKeywordMission value, $Res Function(BuyKeywordMission) _then) = _$BuyKeywordMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, String keyword, String title, String description, int rewardPesos, MissionStatus status
});




}
/// @nodoc
class _$BuyKeywordMissionCopyWithImpl<$Res>
    implements $BuyKeywordMissionCopyWith<$Res> {
  _$BuyKeywordMissionCopyWithImpl(this._self, this._then);

  final BuyKeywordMission _self;
  final $Res Function(BuyKeywordMission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? keyword = null,Object? title = null,Object? description = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(BuyKeywordMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MissionStatus,
  ));
}


}

/// @nodoc
mixin _$MissionProgressEvent {

 String get productId; String get title; String? get categoryId; double get unitPrice; double? get originalPrice; bool get isSuperOffer; int get quantity;
/// Create a copy of MissionProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionProgressEventCopyWith<MissionProgressEvent> get copyWith => _$MissionProgressEventCopyWithImpl<MissionProgressEvent>(this as MissionProgressEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissionProgressEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,categoryId,unitPrice,originalPrice,isSuperOffer,quantity);

@override
String toString() {
  return 'MissionProgressEvent(productId: $productId, title: $title, categoryId: $categoryId, unitPrice: $unitPrice, originalPrice: $originalPrice, isSuperOffer: $isSuperOffer, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $MissionProgressEventCopyWith<$Res>  {
  factory $MissionProgressEventCopyWith(MissionProgressEvent value, $Res Function(MissionProgressEvent) _then) = _$MissionProgressEventCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String? categoryId, double unitPrice, double? originalPrice, bool isSuperOffer, int quantity
});




}
/// @nodoc
class _$MissionProgressEventCopyWithImpl<$Res>
    implements $MissionProgressEventCopyWith<$Res> {
  _$MissionProgressEventCopyWithImpl(this._self, this._then);

  final MissionProgressEvent _self;
  final $Res Function(MissionProgressEvent) _then;

/// Create a copy of MissionProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? categoryId = freezed,Object? unitPrice = null,Object? originalPrice = freezed,Object? isSuperOffer = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MissionProgressEvent].
extension MissionProgressEventPatterns on MissionProgressEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MissionProgressEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MissionProgressEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MissionProgressEvent value)  $default,){
final _that = this;
switch (_that) {
case _MissionProgressEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MissionProgressEvent value)?  $default,){
final _that = this;
switch (_that) {
case _MissionProgressEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String? categoryId,  double unitPrice,  double? originalPrice,  bool isSuperOffer,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MissionProgressEvent() when $default != null:
return $default(_that.productId,_that.title,_that.categoryId,_that.unitPrice,_that.originalPrice,_that.isSuperOffer,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String? categoryId,  double unitPrice,  double? originalPrice,  bool isSuperOffer,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _MissionProgressEvent():
return $default(_that.productId,_that.title,_that.categoryId,_that.unitPrice,_that.originalPrice,_that.isSuperOffer,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String? categoryId,  double unitPrice,  double? originalPrice,  bool isSuperOffer,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _MissionProgressEvent() when $default != null:
return $default(_that.productId,_that.title,_that.categoryId,_that.unitPrice,_that.originalPrice,_that.isSuperOffer,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _MissionProgressEvent implements MissionProgressEvent {
  const _MissionProgressEvent({required this.productId, required this.title, this.categoryId, required this.unitPrice, required this.originalPrice, required this.isSuperOffer, required this.quantity});
  

@override final  String productId;
@override final  String title;
@override final  String? categoryId;
@override final  double unitPrice;
@override final  double? originalPrice;
@override final  bool isSuperOffer;
@override final  int quantity;

/// Create a copy of MissionProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionProgressEventCopyWith<_MissionProgressEvent> get copyWith => __$MissionProgressEventCopyWithImpl<_MissionProgressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissionProgressEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.isSuperOffer, isSuperOffer) || other.isSuperOffer == isSuperOffer)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,categoryId,unitPrice,originalPrice,isSuperOffer,quantity);

@override
String toString() {
  return 'MissionProgressEvent(productId: $productId, title: $title, categoryId: $categoryId, unitPrice: $unitPrice, originalPrice: $originalPrice, isSuperOffer: $isSuperOffer, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MissionProgressEventCopyWith<$Res> implements $MissionProgressEventCopyWith<$Res> {
  factory _$MissionProgressEventCopyWith(_MissionProgressEvent value, $Res Function(_MissionProgressEvent) _then) = __$MissionProgressEventCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String? categoryId, double unitPrice, double? originalPrice, bool isSuperOffer, int quantity
});




}
/// @nodoc
class __$MissionProgressEventCopyWithImpl<$Res>
    implements _$MissionProgressEventCopyWith<$Res> {
  __$MissionProgressEventCopyWithImpl(this._self, this._then);

  final _MissionProgressEvent _self;
  final $Res Function(_MissionProgressEvent) _then;

/// Create a copy of MissionProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? categoryId = freezed,Object? unitPrice = null,Object? originalPrice = freezed,Object? isSuperOffer = null,Object? quantity = null,}) {
  return _then(_MissionProgressEvent(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double?,isSuperOffer: null == isSuperOffer ? _self.isSuperOffer : isSuperOffer // ignore: cast_nullable_to_non_nullable
as bool,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
