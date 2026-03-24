// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_log_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealLogEntity {

 String get id; String get foodId; String get foodName; int get mealTypeId; int get quantity; double get totalCalories; double get totalProtein; double get totalCarbs; double get totalFat; int get weightGram; String get servingUnit; DateTime get logDate; DateTime get createdAt;
/// Create a copy of MealLogEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealLogEntityCopyWith<MealLogEntity> get copyWith => _$MealLogEntityCopyWithImpl<MealLogEntity>(this as MealLogEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealLogEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.mealTypeId, mealTypeId) || other.mealTypeId == mealTypeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&(identical(other.totalProtein, totalProtein) || other.totalProtein == totalProtein)&&(identical(other.totalCarbs, totalCarbs) || other.totalCarbs == totalCarbs)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.weightGram, weightGram) || other.weightGram == weightGram)&&(identical(other.servingUnit, servingUnit) || other.servingUnit == servingUnit)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,foodId,foodName,mealTypeId,quantity,totalCalories,totalProtein,totalCarbs,totalFat,weightGram,servingUnit,logDate,createdAt);

@override
String toString() {
  return 'MealLogEntity(id: $id, foodId: $foodId, foodName: $foodName, mealTypeId: $mealTypeId, quantity: $quantity, totalCalories: $totalCalories, totalProtein: $totalProtein, totalCarbs: $totalCarbs, totalFat: $totalFat, weightGram: $weightGram, servingUnit: $servingUnit, logDate: $logDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MealLogEntityCopyWith<$Res>  {
  factory $MealLogEntityCopyWith(MealLogEntity value, $Res Function(MealLogEntity) _then) = _$MealLogEntityCopyWithImpl;
@useResult
$Res call({
 String id, String foodId, String foodName, int mealTypeId, int quantity, double totalCalories, double totalProtein, double totalCarbs, double totalFat, int weightGram, String servingUnit, DateTime logDate, DateTime createdAt
});




}
/// @nodoc
class _$MealLogEntityCopyWithImpl<$Res>
    implements $MealLogEntityCopyWith<$Res> {
  _$MealLogEntityCopyWithImpl(this._self, this._then);

  final MealLogEntity _self;
  final $Res Function(MealLogEntity) _then;

/// Create a copy of MealLogEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? foodId = null,Object? foodName = null,Object? mealTypeId = null,Object? quantity = null,Object? totalCalories = null,Object? totalProtein = null,Object? totalCarbs = null,Object? totalFat = null,Object? weightGram = null,Object? servingUnit = null,Object? logDate = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as String,foodName: null == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String,mealTypeId: null == mealTypeId ? _self.mealTypeId : mealTypeId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as double,totalProtein: null == totalProtein ? _self.totalProtein : totalProtein // ignore: cast_nullable_to_non_nullable
as double,totalCarbs: null == totalCarbs ? _self.totalCarbs : totalCarbs // ignore: cast_nullable_to_non_nullable
as double,totalFat: null == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as double,weightGram: null == weightGram ? _self.weightGram : weightGram // ignore: cast_nullable_to_non_nullable
as int,servingUnit: null == servingUnit ? _self.servingUnit : servingUnit // ignore: cast_nullable_to_non_nullable
as String,logDate: null == logDate ? _self.logDate : logDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MealLogEntity].
extension MealLogEntityPatterns on MealLogEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealLogEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealLogEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealLogEntity value)  $default,){
final _that = this;
switch (_that) {
case _MealLogEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealLogEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MealLogEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String foodId,  String foodName,  int mealTypeId,  int quantity,  double totalCalories,  double totalProtein,  double totalCarbs,  double totalFat,  int weightGram,  String servingUnit,  DateTime logDate,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealLogEntity() when $default != null:
return $default(_that.id,_that.foodId,_that.foodName,_that.mealTypeId,_that.quantity,_that.totalCalories,_that.totalProtein,_that.totalCarbs,_that.totalFat,_that.weightGram,_that.servingUnit,_that.logDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String foodId,  String foodName,  int mealTypeId,  int quantity,  double totalCalories,  double totalProtein,  double totalCarbs,  double totalFat,  int weightGram,  String servingUnit,  DateTime logDate,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MealLogEntity():
return $default(_that.id,_that.foodId,_that.foodName,_that.mealTypeId,_that.quantity,_that.totalCalories,_that.totalProtein,_that.totalCarbs,_that.totalFat,_that.weightGram,_that.servingUnit,_that.logDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String foodId,  String foodName,  int mealTypeId,  int quantity,  double totalCalories,  double totalProtein,  double totalCarbs,  double totalFat,  int weightGram,  String servingUnit,  DateTime logDate,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MealLogEntity() when $default != null:
return $default(_that.id,_that.foodId,_that.foodName,_that.mealTypeId,_that.quantity,_that.totalCalories,_that.totalProtein,_that.totalCarbs,_that.totalFat,_that.weightGram,_that.servingUnit,_that.logDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MealLogEntity implements MealLogEntity {
  const _MealLogEntity({required this.id, required this.foodId, required this.foodName, required this.mealTypeId, required this.quantity, required this.totalCalories, required this.totalProtein, required this.totalCarbs, required this.totalFat, required this.weightGram, required this.servingUnit, required this.logDate, required this.createdAt});
  

@override final  String id;
@override final  String foodId;
@override final  String foodName;
@override final  int mealTypeId;
@override final  int quantity;
@override final  double totalCalories;
@override final  double totalProtein;
@override final  double totalCarbs;
@override final  double totalFat;
@override final  int weightGram;
@override final  String servingUnit;
@override final  DateTime logDate;
@override final  DateTime createdAt;

/// Create a copy of MealLogEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealLogEntityCopyWith<_MealLogEntity> get copyWith => __$MealLogEntityCopyWithImpl<_MealLogEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealLogEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.mealTypeId, mealTypeId) || other.mealTypeId == mealTypeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&(identical(other.totalProtein, totalProtein) || other.totalProtein == totalProtein)&&(identical(other.totalCarbs, totalCarbs) || other.totalCarbs == totalCarbs)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.weightGram, weightGram) || other.weightGram == weightGram)&&(identical(other.servingUnit, servingUnit) || other.servingUnit == servingUnit)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,foodId,foodName,mealTypeId,quantity,totalCalories,totalProtein,totalCarbs,totalFat,weightGram,servingUnit,logDate,createdAt);

@override
String toString() {
  return 'MealLogEntity(id: $id, foodId: $foodId, foodName: $foodName, mealTypeId: $mealTypeId, quantity: $quantity, totalCalories: $totalCalories, totalProtein: $totalProtein, totalCarbs: $totalCarbs, totalFat: $totalFat, weightGram: $weightGram, servingUnit: $servingUnit, logDate: $logDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MealLogEntityCopyWith<$Res> implements $MealLogEntityCopyWith<$Res> {
  factory _$MealLogEntityCopyWith(_MealLogEntity value, $Res Function(_MealLogEntity) _then) = __$MealLogEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String foodId, String foodName, int mealTypeId, int quantity, double totalCalories, double totalProtein, double totalCarbs, double totalFat, int weightGram, String servingUnit, DateTime logDate, DateTime createdAt
});




}
/// @nodoc
class __$MealLogEntityCopyWithImpl<$Res>
    implements _$MealLogEntityCopyWith<$Res> {
  __$MealLogEntityCopyWithImpl(this._self, this._then);

  final _MealLogEntity _self;
  final $Res Function(_MealLogEntity) _then;

/// Create a copy of MealLogEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? foodId = null,Object? foodName = null,Object? mealTypeId = null,Object? quantity = null,Object? totalCalories = null,Object? totalProtein = null,Object? totalCarbs = null,Object? totalFat = null,Object? weightGram = null,Object? servingUnit = null,Object? logDate = null,Object? createdAt = null,}) {
  return _then(_MealLogEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as String,foodName: null == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String,mealTypeId: null == mealTypeId ? _self.mealTypeId : mealTypeId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as double,totalProtein: null == totalProtein ? _self.totalProtein : totalProtein // ignore: cast_nullable_to_non_nullable
as double,totalCarbs: null == totalCarbs ? _self.totalCarbs : totalCarbs // ignore: cast_nullable_to_non_nullable
as double,totalFat: null == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as double,weightGram: null == weightGram ? _self.weightGram : weightGram // ignore: cast_nullable_to_non_nullable
as int,servingUnit: null == servingUnit ? _self.servingUnit : servingUnit // ignore: cast_nullable_to_non_nullable
as String,logDate: null == logDate ? _self.logDate : logDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
