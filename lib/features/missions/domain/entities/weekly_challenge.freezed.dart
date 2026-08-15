// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeeklyChallenge {

 String get id; String get weekKey; String get title; String get description; int get target; int get progress; int get rewardPesos; WeeklyChallengeStatus get status;
/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyChallengeCopyWith<WeeklyChallenge> get copyWith => _$WeeklyChallengeCopyWithImpl<WeeklyChallenge>(this as WeeklyChallenge, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyChallenge&&(identical(other.id, id) || other.id == id)&&(identical(other.weekKey, weekKey) || other.weekKey == weekKey)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekKey,title,description,target,progress,rewardPesos,status);

@override
String toString() {
  return 'WeeklyChallenge(id: $id, weekKey: $weekKey, title: $title, description: $description, target: $target, progress: $progress, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $WeeklyChallengeCopyWith<$Res>  {
  factory $WeeklyChallengeCopyWith(WeeklyChallenge value, $Res Function(WeeklyChallenge) _then) = _$WeeklyChallengeCopyWithImpl;
@useResult
$Res call({
 String id, String weekKey, String title, String description, int target, int progress, int rewardPesos, WeeklyChallengeStatus status
});




}
/// @nodoc
class _$WeeklyChallengeCopyWithImpl<$Res>
    implements $WeeklyChallengeCopyWith<$Res> {
  _$WeeklyChallengeCopyWithImpl(this._self, this._then);

  final WeeklyChallenge _self;
  final $Res Function(WeeklyChallenge) _then;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? weekKey = null,Object? title = null,Object? description = null,Object? target = null,Object? progress = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekKey: null == weekKey ? _self.weekKey : weekKey // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WeeklyChallengeStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyChallenge].
extension WeeklyChallengePatterns on WeeklyChallenge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DistinctCategoriesWeekly value)?  distinctCategories,TResult Function( SuperOffersCountWeekly value)?  superOffersCount,TResult Function( TotalSpendWeekly value)?  totalSpend,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DistinctCategoriesWeekly() when distinctCategories != null:
return distinctCategories(_that);case SuperOffersCountWeekly() when superOffersCount != null:
return superOffersCount(_that);case TotalSpendWeekly() when totalSpend != null:
return totalSpend(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DistinctCategoriesWeekly value)  distinctCategories,required TResult Function( SuperOffersCountWeekly value)  superOffersCount,required TResult Function( TotalSpendWeekly value)  totalSpend,}){
final _that = this;
switch (_that) {
case DistinctCategoriesWeekly():
return distinctCategories(_that);case SuperOffersCountWeekly():
return superOffersCount(_that);case TotalSpendWeekly():
return totalSpend(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DistinctCategoriesWeekly value)?  distinctCategories,TResult? Function( SuperOffersCountWeekly value)?  superOffersCount,TResult? Function( TotalSpendWeekly value)?  totalSpend,}){
final _that = this;
switch (_that) {
case DistinctCategoriesWeekly() when distinctCategories != null:
return distinctCategories(_that);case SuperOffersCountWeekly() when superOffersCount != null:
return superOffersCount(_that);case TotalSpendWeekly() when totalSpend != null:
return totalSpend(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  List<String> seenCategoryIds,  int rewardPesos,  WeeklyChallengeStatus status)?  distinctCategories,TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)?  superOffersCount,TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)?  totalSpend,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DistinctCategoriesWeekly() when distinctCategories != null:
return distinctCategories(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.seenCategoryIds,_that.rewardPesos,_that.status);case SuperOffersCountWeekly() when superOffersCount != null:
return superOffersCount(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);case TotalSpendWeekly() when totalSpend != null:
return totalSpend(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  List<String> seenCategoryIds,  int rewardPesos,  WeeklyChallengeStatus status)  distinctCategories,required TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)  superOffersCount,required TResult Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)  totalSpend,}) {final _that = this;
switch (_that) {
case DistinctCategoriesWeekly():
return distinctCategories(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.seenCategoryIds,_that.rewardPesos,_that.status);case SuperOffersCountWeekly():
return superOffersCount(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);case TotalSpendWeekly():
return totalSpend(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  List<String> seenCategoryIds,  int rewardPesos,  WeeklyChallengeStatus status)?  distinctCategories,TResult? Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)?  superOffersCount,TResult? Function( String id,  String weekKey,  String title,  String description,  int target,  int progress,  int rewardPesos,  WeeklyChallengeStatus status)?  totalSpend,}) {final _that = this;
switch (_that) {
case DistinctCategoriesWeekly() when distinctCategories != null:
return distinctCategories(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.seenCategoryIds,_that.rewardPesos,_that.status);case SuperOffersCountWeekly() when superOffersCount != null:
return superOffersCount(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);case TotalSpendWeekly() when totalSpend != null:
return totalSpend(_that.id,_that.weekKey,_that.title,_that.description,_that.target,_that.progress,_that.rewardPesos,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class DistinctCategoriesWeekly extends WeeklyChallenge {
  const DistinctCategoriesWeekly({required this.id, required this.weekKey, required this.title, required this.description, required this.target, this.progress = 0, final  List<String> seenCategoryIds = const [], required this.rewardPesos, this.status = WeeklyChallengeStatus.active}): _seenCategoryIds = seenCategoryIds,super._();
  

@override final  String id;
@override final  String weekKey;
@override final  String title;
@override final  String description;
@override final  int target;
@override@JsonKey() final  int progress;
 final  List<String> _seenCategoryIds;
@JsonKey() List<String> get seenCategoryIds {
  if (_seenCategoryIds is EqualUnmodifiableListView) return _seenCategoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seenCategoryIds);
}

@override final  int rewardPesos;
@override@JsonKey() final  WeeklyChallengeStatus status;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistinctCategoriesWeeklyCopyWith<DistinctCategoriesWeekly> get copyWith => _$DistinctCategoriesWeeklyCopyWithImpl<DistinctCategoriesWeekly>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistinctCategoriesWeekly&&(identical(other.id, id) || other.id == id)&&(identical(other.weekKey, weekKey) || other.weekKey == weekKey)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.progress, progress) || other.progress == progress)&&const DeepCollectionEquality().equals(other._seenCategoryIds, _seenCategoryIds)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekKey,title,description,target,progress,const DeepCollectionEquality().hash(_seenCategoryIds),rewardPesos,status);

@override
String toString() {
  return 'WeeklyChallenge.distinctCategories(id: $id, weekKey: $weekKey, title: $title, description: $description, target: $target, progress: $progress, seenCategoryIds: $seenCategoryIds, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $DistinctCategoriesWeeklyCopyWith<$Res> implements $WeeklyChallengeCopyWith<$Res> {
  factory $DistinctCategoriesWeeklyCopyWith(DistinctCategoriesWeekly value, $Res Function(DistinctCategoriesWeekly) _then) = _$DistinctCategoriesWeeklyCopyWithImpl;
@override @useResult
$Res call({
 String id, String weekKey, String title, String description, int target, int progress, List<String> seenCategoryIds, int rewardPesos, WeeklyChallengeStatus status
});




}
/// @nodoc
class _$DistinctCategoriesWeeklyCopyWithImpl<$Res>
    implements $DistinctCategoriesWeeklyCopyWith<$Res> {
  _$DistinctCategoriesWeeklyCopyWithImpl(this._self, this._then);

  final DistinctCategoriesWeekly _self;
  final $Res Function(DistinctCategoriesWeekly) _then;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekKey = null,Object? title = null,Object? description = null,Object? target = null,Object? progress = null,Object? seenCategoryIds = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(DistinctCategoriesWeekly(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekKey: null == weekKey ? _self.weekKey : weekKey // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,seenCategoryIds: null == seenCategoryIds ? _self._seenCategoryIds : seenCategoryIds // ignore: cast_nullable_to_non_nullable
as List<String>,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WeeklyChallengeStatus,
  ));
}


}

/// @nodoc


class SuperOffersCountWeekly extends WeeklyChallenge {
  const SuperOffersCountWeekly({required this.id, required this.weekKey, required this.title, required this.description, required this.target, this.progress = 0, required this.rewardPesos, this.status = WeeklyChallengeStatus.active}): super._();
  

@override final  String id;
@override final  String weekKey;
@override final  String title;
@override final  String description;
@override final  int target;
@override@JsonKey() final  int progress;
@override final  int rewardPesos;
@override@JsonKey() final  WeeklyChallengeStatus status;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuperOffersCountWeeklyCopyWith<SuperOffersCountWeekly> get copyWith => _$SuperOffersCountWeeklyCopyWithImpl<SuperOffersCountWeekly>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuperOffersCountWeekly&&(identical(other.id, id) || other.id == id)&&(identical(other.weekKey, weekKey) || other.weekKey == weekKey)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekKey,title,description,target,progress,rewardPesos,status);

@override
String toString() {
  return 'WeeklyChallenge.superOffersCount(id: $id, weekKey: $weekKey, title: $title, description: $description, target: $target, progress: $progress, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $SuperOffersCountWeeklyCopyWith<$Res> implements $WeeklyChallengeCopyWith<$Res> {
  factory $SuperOffersCountWeeklyCopyWith(SuperOffersCountWeekly value, $Res Function(SuperOffersCountWeekly) _then) = _$SuperOffersCountWeeklyCopyWithImpl;
@override @useResult
$Res call({
 String id, String weekKey, String title, String description, int target, int progress, int rewardPesos, WeeklyChallengeStatus status
});




}
/// @nodoc
class _$SuperOffersCountWeeklyCopyWithImpl<$Res>
    implements $SuperOffersCountWeeklyCopyWith<$Res> {
  _$SuperOffersCountWeeklyCopyWithImpl(this._self, this._then);

  final SuperOffersCountWeekly _self;
  final $Res Function(SuperOffersCountWeekly) _then;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekKey = null,Object? title = null,Object? description = null,Object? target = null,Object? progress = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(SuperOffersCountWeekly(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekKey: null == weekKey ? _self.weekKey : weekKey // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WeeklyChallengeStatus,
  ));
}


}

/// @nodoc


class TotalSpendWeekly extends WeeklyChallenge {
  const TotalSpendWeekly({required this.id, required this.weekKey, required this.title, required this.description, required this.target, this.progress = 0, required this.rewardPesos, this.status = WeeklyChallengeStatus.active}): super._();
  

@override final  String id;
@override final  String weekKey;
@override final  String title;
@override final  String description;
@override final  int target;
@override@JsonKey() final  int progress;
@override final  int rewardPesos;
@override@JsonKey() final  WeeklyChallengeStatus status;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotalSpendWeeklyCopyWith<TotalSpendWeekly> get copyWith => _$TotalSpendWeeklyCopyWithImpl<TotalSpendWeekly>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TotalSpendWeekly&&(identical(other.id, id) || other.id == id)&&(identical(other.weekKey, weekKey) || other.weekKey == weekKey)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.rewardPesos, rewardPesos) || other.rewardPesos == rewardPesos)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekKey,title,description,target,progress,rewardPesos,status);

@override
String toString() {
  return 'WeeklyChallenge.totalSpend(id: $id, weekKey: $weekKey, title: $title, description: $description, target: $target, progress: $progress, rewardPesos: $rewardPesos, status: $status)';
}


}

/// @nodoc
abstract mixin class $TotalSpendWeeklyCopyWith<$Res> implements $WeeklyChallengeCopyWith<$Res> {
  factory $TotalSpendWeeklyCopyWith(TotalSpendWeekly value, $Res Function(TotalSpendWeekly) _then) = _$TotalSpendWeeklyCopyWithImpl;
@override @useResult
$Res call({
 String id, String weekKey, String title, String description, int target, int progress, int rewardPesos, WeeklyChallengeStatus status
});




}
/// @nodoc
class _$TotalSpendWeeklyCopyWithImpl<$Res>
    implements $TotalSpendWeeklyCopyWith<$Res> {
  _$TotalSpendWeeklyCopyWithImpl(this._self, this._then);

  final TotalSpendWeekly _self;
  final $Res Function(TotalSpendWeekly) _then;

/// Create a copy of WeeklyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekKey = null,Object? title = null,Object? description = null,Object? target = null,Object? progress = null,Object? rewardPesos = null,Object? status = null,}) {
  return _then(TotalSpendWeekly(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekKey: null == weekKey ? _self.weekKey : weekKey // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,rewardPesos: null == rewardPesos ? _self.rewardPesos : rewardPesos // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WeeklyChallengeStatus,
  ));
}


}

/// @nodoc
mixin _$WeeklyProgressEvent {

 Set<String> get categoryIds; int get superOfferCount; int get spendPesos;
/// Create a copy of WeeklyProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyProgressEventCopyWith<WeeklyProgressEvent> get copyWith => _$WeeklyProgressEventCopyWithImpl<WeeklyProgressEvent>(this as WeeklyProgressEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyProgressEvent&&const DeepCollectionEquality().equals(other.categoryIds, categoryIds)&&(identical(other.superOfferCount, superOfferCount) || other.superOfferCount == superOfferCount)&&(identical(other.spendPesos, spendPesos) || other.spendPesos == spendPesos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categoryIds),superOfferCount,spendPesos);

@override
String toString() {
  return 'WeeklyProgressEvent(categoryIds: $categoryIds, superOfferCount: $superOfferCount, spendPesos: $spendPesos)';
}


}

/// @nodoc
abstract mixin class $WeeklyProgressEventCopyWith<$Res>  {
  factory $WeeklyProgressEventCopyWith(WeeklyProgressEvent value, $Res Function(WeeklyProgressEvent) _then) = _$WeeklyProgressEventCopyWithImpl;
@useResult
$Res call({
 Set<String> categoryIds, int superOfferCount, int spendPesos
});




}
/// @nodoc
class _$WeeklyProgressEventCopyWithImpl<$Res>
    implements $WeeklyProgressEventCopyWith<$Res> {
  _$WeeklyProgressEventCopyWithImpl(this._self, this._then);

  final WeeklyProgressEvent _self;
  final $Res Function(WeeklyProgressEvent) _then;

/// Create a copy of WeeklyProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryIds = null,Object? superOfferCount = null,Object? spendPesos = null,}) {
  return _then(_self.copyWith(
categoryIds: null == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as Set<String>,superOfferCount: null == superOfferCount ? _self.superOfferCount : superOfferCount // ignore: cast_nullable_to_non_nullable
as int,spendPesos: null == spendPesos ? _self.spendPesos : spendPesos // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyProgressEvent].
extension WeeklyProgressEventPatterns on WeeklyProgressEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyProgressEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyProgressEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyProgressEvent value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyProgressEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyProgressEvent value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyProgressEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<String> categoryIds,  int superOfferCount,  int spendPesos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyProgressEvent() when $default != null:
return $default(_that.categoryIds,_that.superOfferCount,_that.spendPesos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<String> categoryIds,  int superOfferCount,  int spendPesos)  $default,) {final _that = this;
switch (_that) {
case _WeeklyProgressEvent():
return $default(_that.categoryIds,_that.superOfferCount,_that.spendPesos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<String> categoryIds,  int superOfferCount,  int spendPesos)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyProgressEvent() when $default != null:
return $default(_that.categoryIds,_that.superOfferCount,_that.spendPesos);case _:
  return null;

}
}

}

/// @nodoc


class _WeeklyProgressEvent implements WeeklyProgressEvent {
  const _WeeklyProgressEvent({required final  Set<String> categoryIds, required this.superOfferCount, required this.spendPesos}): _categoryIds = categoryIds;
  

 final  Set<String> _categoryIds;
@override Set<String> get categoryIds {
  if (_categoryIds is EqualUnmodifiableSetView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_categoryIds);
}

@override final  int superOfferCount;
@override final  int spendPesos;

/// Create a copy of WeeklyProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyProgressEventCopyWith<_WeeklyProgressEvent> get copyWith => __$WeeklyProgressEventCopyWithImpl<_WeeklyProgressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyProgressEvent&&const DeepCollectionEquality().equals(other._categoryIds, _categoryIds)&&(identical(other.superOfferCount, superOfferCount) || other.superOfferCount == superOfferCount)&&(identical(other.spendPesos, spendPesos) || other.spendPesos == spendPesos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoryIds),superOfferCount,spendPesos);

@override
String toString() {
  return 'WeeklyProgressEvent(categoryIds: $categoryIds, superOfferCount: $superOfferCount, spendPesos: $spendPesos)';
}


}

/// @nodoc
abstract mixin class _$WeeklyProgressEventCopyWith<$Res> implements $WeeklyProgressEventCopyWith<$Res> {
  factory _$WeeklyProgressEventCopyWith(_WeeklyProgressEvent value, $Res Function(_WeeklyProgressEvent) _then) = __$WeeklyProgressEventCopyWithImpl;
@override @useResult
$Res call({
 Set<String> categoryIds, int superOfferCount, int spendPesos
});




}
/// @nodoc
class __$WeeklyProgressEventCopyWithImpl<$Res>
    implements _$WeeklyProgressEventCopyWith<$Res> {
  __$WeeklyProgressEventCopyWithImpl(this._self, this._then);

  final _WeeklyProgressEvent _self;
  final $Res Function(_WeeklyProgressEvent) _then;

/// Create a copy of WeeklyProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryIds = null,Object? superOfferCount = null,Object? spendPesos = null,}) {
  return _then(_WeeklyProgressEvent(
categoryIds: null == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as Set<String>,superOfferCount: null == superOfferCount ? _self.superOfferCount : superOfferCount // ignore: cast_nullable_to_non_nullable
as int,spendPesos: null == spendPesos ? _self.spendPesos : spendPesos // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
