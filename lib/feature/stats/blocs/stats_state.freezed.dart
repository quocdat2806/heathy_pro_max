// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyNutrition {

 DateTime get date; double get calories; double get protein; double get carbs; double get fat;
/// Create a copy of DailyNutrition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyNutritionCopyWith<DailyNutrition> get copyWith => _$DailyNutritionCopyWithImpl<DailyNutrition>(this as DailyNutrition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyNutrition&&(identical(other.date, date) || other.date == date)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat));
}


@override
int get hashCode => Object.hash(runtimeType,date,calories,protein,carbs,fat);

@override
String toString() {
  return 'DailyNutrition(date: $date, calories: $calories, protein: $protein, carbs: $carbs, fat: $fat)';
}


}

/// @nodoc
abstract mixin class $DailyNutritionCopyWith<$Res>  {
  factory $DailyNutritionCopyWith(DailyNutrition value, $Res Function(DailyNutrition) _then) = _$DailyNutritionCopyWithImpl;
@useResult
$Res call({
 DateTime date, double calories, double protein, double carbs, double fat
});




}
/// @nodoc
class _$DailyNutritionCopyWithImpl<$Res>
    implements $DailyNutritionCopyWith<$Res> {
  _$DailyNutritionCopyWithImpl(this._self, this._then);

  final DailyNutrition _self;
  final $Res Function(DailyNutrition) _then;

/// Create a copy of DailyNutrition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? calories = null,Object? protein = null,Object? carbs = null,Object? fat = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyNutrition].
extension DailyNutritionPatterns on DailyNutrition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyNutrition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyNutrition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyNutrition value)  $default,){
final _that = this;
switch (_that) {
case _DailyNutrition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyNutrition value)?  $default,){
final _that = this;
switch (_that) {
case _DailyNutrition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double calories,  double protein,  double carbs,  double fat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyNutrition() when $default != null:
return $default(_that.date,_that.calories,_that.protein,_that.carbs,_that.fat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double calories,  double protein,  double carbs,  double fat)  $default,) {final _that = this;
switch (_that) {
case _DailyNutrition():
return $default(_that.date,_that.calories,_that.protein,_that.carbs,_that.fat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double calories,  double protein,  double carbs,  double fat)?  $default,) {final _that = this;
switch (_that) {
case _DailyNutrition() when $default != null:
return $default(_that.date,_that.calories,_that.protein,_that.carbs,_that.fat);case _:
  return null;

}
}

}

/// @nodoc


class _DailyNutrition extends DailyNutrition {
  const _DailyNutrition({required this.date, required this.calories, required this.protein, required this.carbs, required this.fat}): super._();
  

@override final  DateTime date;
@override final  double calories;
@override final  double protein;
@override final  double carbs;
@override final  double fat;

/// Create a copy of DailyNutrition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyNutritionCopyWith<_DailyNutrition> get copyWith => __$DailyNutritionCopyWithImpl<_DailyNutrition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyNutrition&&(identical(other.date, date) || other.date == date)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat));
}


@override
int get hashCode => Object.hash(runtimeType,date,calories,protein,carbs,fat);

@override
String toString() {
  return 'DailyNutrition(date: $date, calories: $calories, protein: $protein, carbs: $carbs, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$DailyNutritionCopyWith<$Res> implements $DailyNutritionCopyWith<$Res> {
  factory _$DailyNutritionCopyWith(_DailyNutrition value, $Res Function(_DailyNutrition) _then) = __$DailyNutritionCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double calories, double protein, double carbs, double fat
});




}
/// @nodoc
class __$DailyNutritionCopyWithImpl<$Res>
    implements _$DailyNutritionCopyWith<$Res> {
  __$DailyNutritionCopyWithImpl(this._self, this._then);

  final _DailyNutrition _self;
  final $Res Function(_DailyNutrition) _then;

/// Create a copy of DailyNutrition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? calories = null,Object? protein = null,Object? carbs = null,Object? fat = null,}) {
  return _then(_DailyNutrition(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$StatsState {

 bool get isLoading; List<DailyNutrition> get weeklyData;/// null = chưa load xong từ BodyAssessmentCalculator
 double? get calorieGoal; double? get proteinGoal; double? get carbGoal; double? get fatGoal;
/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsStateCopyWith<StatsState> get copyWith => _$StatsStateCopyWithImpl<StatsState>(this as StatsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.weeklyData, weeklyData)&&(identical(other.calorieGoal, calorieGoal) || other.calorieGoal == calorieGoal)&&(identical(other.proteinGoal, proteinGoal) || other.proteinGoal == proteinGoal)&&(identical(other.carbGoal, carbGoal) || other.carbGoal == carbGoal)&&(identical(other.fatGoal, fatGoal) || other.fatGoal == fatGoal));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(weeklyData),calorieGoal,proteinGoal,carbGoal,fatGoal);

@override
String toString() {
  return 'StatsState(isLoading: $isLoading, weeklyData: $weeklyData, calorieGoal: $calorieGoal, proteinGoal: $proteinGoal, carbGoal: $carbGoal, fatGoal: $fatGoal)';
}


}

/// @nodoc
abstract mixin class $StatsStateCopyWith<$Res>  {
  factory $StatsStateCopyWith(StatsState value, $Res Function(StatsState) _then) = _$StatsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<DailyNutrition> weeklyData, double? calorieGoal, double? proteinGoal, double? carbGoal, double? fatGoal
});




}
/// @nodoc
class _$StatsStateCopyWithImpl<$Res>
    implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._self, this._then);

  final StatsState _self;
  final $Res Function(StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? weeklyData = null,Object? calorieGoal = freezed,Object? proteinGoal = freezed,Object? carbGoal = freezed,Object? fatGoal = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,weeklyData: null == weeklyData ? _self.weeklyData : weeklyData // ignore: cast_nullable_to_non_nullable
as List<DailyNutrition>,calorieGoal: freezed == calorieGoal ? _self.calorieGoal : calorieGoal // ignore: cast_nullable_to_non_nullable
as double?,proteinGoal: freezed == proteinGoal ? _self.proteinGoal : proteinGoal // ignore: cast_nullable_to_non_nullable
as double?,carbGoal: freezed == carbGoal ? _self.carbGoal : carbGoal // ignore: cast_nullable_to_non_nullable
as double?,fatGoal: freezed == fatGoal ? _self.fatGoal : fatGoal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsState].
extension StatsStatePatterns on StatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsState value)  $default,){
final _that = this;
switch (_that) {
case _StatsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsState value)?  $default,){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<DailyNutrition> weeklyData,  double? calorieGoal,  double? proteinGoal,  double? carbGoal,  double? fatGoal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.isLoading,_that.weeklyData,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<DailyNutrition> weeklyData,  double? calorieGoal,  double? proteinGoal,  double? carbGoal,  double? fatGoal)  $default,) {final _that = this;
switch (_that) {
case _StatsState():
return $default(_that.isLoading,_that.weeklyData,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<DailyNutrition> weeklyData,  double? calorieGoal,  double? proteinGoal,  double? carbGoal,  double? fatGoal)?  $default,) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.isLoading,_that.weeklyData,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
  return null;

}
}

}

/// @nodoc


class _StatsState extends StatsState {
  const _StatsState({this.isLoading = false, final  List<DailyNutrition> weeklyData = const [], this.calorieGoal, this.proteinGoal, this.carbGoal, this.fatGoal}): _weeklyData = weeklyData,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<DailyNutrition> _weeklyData;
@override@JsonKey() List<DailyNutrition> get weeklyData {
  if (_weeklyData is EqualUnmodifiableListView) return _weeklyData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weeklyData);
}

/// null = chưa load xong từ BodyAssessmentCalculator
@override final  double? calorieGoal;
@override final  double? proteinGoal;
@override final  double? carbGoal;
@override final  double? fatGoal;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsStateCopyWith<_StatsState> get copyWith => __$StatsStateCopyWithImpl<_StatsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._weeklyData, _weeklyData)&&(identical(other.calorieGoal, calorieGoal) || other.calorieGoal == calorieGoal)&&(identical(other.proteinGoal, proteinGoal) || other.proteinGoal == proteinGoal)&&(identical(other.carbGoal, carbGoal) || other.carbGoal == carbGoal)&&(identical(other.fatGoal, fatGoal) || other.fatGoal == fatGoal));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_weeklyData),calorieGoal,proteinGoal,carbGoal,fatGoal);

@override
String toString() {
  return 'StatsState(isLoading: $isLoading, weeklyData: $weeklyData, calorieGoal: $calorieGoal, proteinGoal: $proteinGoal, carbGoal: $carbGoal, fatGoal: $fatGoal)';
}


}

/// @nodoc
abstract mixin class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(_StatsState value, $Res Function(_StatsState) _then) = __$StatsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<DailyNutrition> weeklyData, double? calorieGoal, double? proteinGoal, double? carbGoal, double? fatGoal
});




}
/// @nodoc
class __$StatsStateCopyWithImpl<$Res>
    implements _$StatsStateCopyWith<$Res> {
  __$StatsStateCopyWithImpl(this._self, this._then);

  final _StatsState _self;
  final $Res Function(_StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? weeklyData = null,Object? calorieGoal = freezed,Object? proteinGoal = freezed,Object? carbGoal = freezed,Object? fatGoal = freezed,}) {
  return _then(_StatsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,weeklyData: null == weeklyData ? _self._weeklyData : weeklyData // ignore: cast_nullable_to_non_nullable
as List<DailyNutrition>,calorieGoal: freezed == calorieGoal ? _self.calorieGoal : calorieGoal // ignore: cast_nullable_to_non_nullable
as double?,proteinGoal: freezed == proteinGoal ? _self.proteinGoal : proteinGoal // ignore: cast_nullable_to_non_nullable
as double?,carbGoal: freezed == carbGoal ? _self.carbGoal : carbGoal // ignore: cast_nullable_to_non_nullable
as double?,fatGoal: freezed == fatGoal ? _self.fatGoal : fatGoal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
