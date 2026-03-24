// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_user_infomation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetupUserInformationState {

 SetupUserInformationStep get step; Gender get gender; String get age; String get height; String get weight; double get currentBodyFat; MovementTime get movementTime; DevelopmentSpeed get developmentSpeed; Goal get goal; double get targetBodyFat; String get targetWeight; bool get isSetupInformationCompleted;
/// Create a copy of SetupUserInformationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetupUserInformationStateCopyWith<SetupUserInformationState> get copyWith => _$SetupUserInformationStateCopyWithImpl<SetupUserInformationState>(this as SetupUserInformationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetupUserInformationState&&(identical(other.step, step) || other.step == step)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.currentBodyFat, currentBodyFat) || other.currentBodyFat == currentBodyFat)&&(identical(other.movementTime, movementTime) || other.movementTime == movementTime)&&(identical(other.developmentSpeed, developmentSpeed) || other.developmentSpeed == developmentSpeed)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetBodyFat, targetBodyFat) || other.targetBodyFat == targetBodyFat)&&(identical(other.targetWeight, targetWeight) || other.targetWeight == targetWeight)&&(identical(other.isSetupInformationCompleted, isSetupInformationCompleted) || other.isSetupInformationCompleted == isSetupInformationCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,step,gender,age,height,weight,currentBodyFat,movementTime,developmentSpeed,goal,targetBodyFat,targetWeight,isSetupInformationCompleted);

@override
String toString() {
  return 'SetupUserInformationState(step: $step, gender: $gender, age: $age, height: $height, weight: $weight, currentBodyFat: $currentBodyFat, movementTime: $movementTime, developmentSpeed: $developmentSpeed, goal: $goal, targetBodyFat: $targetBodyFat, targetWeight: $targetWeight, isSetupInformationCompleted: $isSetupInformationCompleted)';
}


}

/// @nodoc
abstract mixin class $SetupUserInformationStateCopyWith<$Res>  {
  factory $SetupUserInformationStateCopyWith(SetupUserInformationState value, $Res Function(SetupUserInformationState) _then) = _$SetupUserInformationStateCopyWithImpl;
@useResult
$Res call({
 SetupUserInformationStep step, Gender gender, String age, String height, String weight, double currentBodyFat, MovementTime movementTime, DevelopmentSpeed developmentSpeed, Goal goal, double targetBodyFat, String targetWeight, bool isSetupInformationCompleted
});




}
/// @nodoc
class _$SetupUserInformationStateCopyWithImpl<$Res>
    implements $SetupUserInformationStateCopyWith<$Res> {
  _$SetupUserInformationStateCopyWithImpl(this._self, this._then);

  final SetupUserInformationState _self;
  final $Res Function(SetupUserInformationState) _then;

/// Create a copy of SetupUserInformationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? gender = null,Object? age = null,Object? height = null,Object? weight = null,Object? currentBodyFat = null,Object? movementTime = null,Object? developmentSpeed = null,Object? goal = null,Object? targetBodyFat = null,Object? targetWeight = null,Object? isSetupInformationCompleted = null,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as SetupUserInformationStep,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,currentBodyFat: null == currentBodyFat ? _self.currentBodyFat : currentBodyFat // ignore: cast_nullable_to_non_nullable
as double,movementTime: null == movementTime ? _self.movementTime : movementTime // ignore: cast_nullable_to_non_nullable
as MovementTime,developmentSpeed: null == developmentSpeed ? _self.developmentSpeed : developmentSpeed // ignore: cast_nullable_to_non_nullable
as DevelopmentSpeed,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as Goal,targetBodyFat: null == targetBodyFat ? _self.targetBodyFat : targetBodyFat // ignore: cast_nullable_to_non_nullable
as double,targetWeight: null == targetWeight ? _self.targetWeight : targetWeight // ignore: cast_nullable_to_non_nullable
as String,isSetupInformationCompleted: null == isSetupInformationCompleted ? _self.isSetupInformationCompleted : isSetupInformationCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SetupUserInformationState].
extension SetupUserInformationStatePatterns on SetupUserInformationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetupUserInformationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetupUserInformationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetupUserInformationState value)  $default,){
final _that = this;
switch (_that) {
case _SetupUserInformationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetupUserInformationState value)?  $default,){
final _that = this;
switch (_that) {
case _SetupUserInformationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SetupUserInformationStep step,  Gender gender,  String age,  String height,  String weight,  double currentBodyFat,  MovementTime movementTime,  DevelopmentSpeed developmentSpeed,  Goal goal,  double targetBodyFat,  String targetWeight,  bool isSetupInformationCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetupUserInformationState() when $default != null:
return $default(_that.step,_that.gender,_that.age,_that.height,_that.weight,_that.currentBodyFat,_that.movementTime,_that.developmentSpeed,_that.goal,_that.targetBodyFat,_that.targetWeight,_that.isSetupInformationCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SetupUserInformationStep step,  Gender gender,  String age,  String height,  String weight,  double currentBodyFat,  MovementTime movementTime,  DevelopmentSpeed developmentSpeed,  Goal goal,  double targetBodyFat,  String targetWeight,  bool isSetupInformationCompleted)  $default,) {final _that = this;
switch (_that) {
case _SetupUserInformationState():
return $default(_that.step,_that.gender,_that.age,_that.height,_that.weight,_that.currentBodyFat,_that.movementTime,_that.developmentSpeed,_that.goal,_that.targetBodyFat,_that.targetWeight,_that.isSetupInformationCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SetupUserInformationStep step,  Gender gender,  String age,  String height,  String weight,  double currentBodyFat,  MovementTime movementTime,  DevelopmentSpeed developmentSpeed,  Goal goal,  double targetBodyFat,  String targetWeight,  bool isSetupInformationCompleted)?  $default,) {final _that = this;
switch (_that) {
case _SetupUserInformationState() when $default != null:
return $default(_that.step,_that.gender,_that.age,_that.height,_that.weight,_that.currentBodyFat,_that.movementTime,_that.developmentSpeed,_that.goal,_that.targetBodyFat,_that.targetWeight,_that.isSetupInformationCompleted);case _:
  return null;

}
}

}

/// @nodoc


class _SetupUserInformationState extends SetupUserInformationState {
  const _SetupUserInformationState({this.step = SetupUserInformationStep.setupGenderAndAge, this.gender = Gender.male, this.age = '', this.height = '', this.weight = '', this.currentBodyFat = 20, this.movementTime = MovementTime.medium, this.developmentSpeed = DevelopmentSpeed.medium, this.goal = Goal.loseWeight, this.targetBodyFat = 15, this.targetWeight = '', this.isSetupInformationCompleted = false}): super._();
  

@override@JsonKey() final  SetupUserInformationStep step;
@override@JsonKey() final  Gender gender;
@override@JsonKey() final  String age;
@override@JsonKey() final  String height;
@override@JsonKey() final  String weight;
@override@JsonKey() final  double currentBodyFat;
@override@JsonKey() final  MovementTime movementTime;
@override@JsonKey() final  DevelopmentSpeed developmentSpeed;
@override@JsonKey() final  Goal goal;
@override@JsonKey() final  double targetBodyFat;
@override@JsonKey() final  String targetWeight;
@override@JsonKey() final  bool isSetupInformationCompleted;

/// Create a copy of SetupUserInformationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetupUserInformationStateCopyWith<_SetupUserInformationState> get copyWith => __$SetupUserInformationStateCopyWithImpl<_SetupUserInformationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupUserInformationState&&(identical(other.step, step) || other.step == step)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.currentBodyFat, currentBodyFat) || other.currentBodyFat == currentBodyFat)&&(identical(other.movementTime, movementTime) || other.movementTime == movementTime)&&(identical(other.developmentSpeed, developmentSpeed) || other.developmentSpeed == developmentSpeed)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetBodyFat, targetBodyFat) || other.targetBodyFat == targetBodyFat)&&(identical(other.targetWeight, targetWeight) || other.targetWeight == targetWeight)&&(identical(other.isSetupInformationCompleted, isSetupInformationCompleted) || other.isSetupInformationCompleted == isSetupInformationCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,step,gender,age,height,weight,currentBodyFat,movementTime,developmentSpeed,goal,targetBodyFat,targetWeight,isSetupInformationCompleted);

@override
String toString() {
  return 'SetupUserInformationState(step: $step, gender: $gender, age: $age, height: $height, weight: $weight, currentBodyFat: $currentBodyFat, movementTime: $movementTime, developmentSpeed: $developmentSpeed, goal: $goal, targetBodyFat: $targetBodyFat, targetWeight: $targetWeight, isSetupInformationCompleted: $isSetupInformationCompleted)';
}


}

/// @nodoc
abstract mixin class _$SetupUserInformationStateCopyWith<$Res> implements $SetupUserInformationStateCopyWith<$Res> {
  factory _$SetupUserInformationStateCopyWith(_SetupUserInformationState value, $Res Function(_SetupUserInformationState) _then) = __$SetupUserInformationStateCopyWithImpl;
@override @useResult
$Res call({
 SetupUserInformationStep step, Gender gender, String age, String height, String weight, double currentBodyFat, MovementTime movementTime, DevelopmentSpeed developmentSpeed, Goal goal, double targetBodyFat, String targetWeight, bool isSetupInformationCompleted
});




}
/// @nodoc
class __$SetupUserInformationStateCopyWithImpl<$Res>
    implements _$SetupUserInformationStateCopyWith<$Res> {
  __$SetupUserInformationStateCopyWithImpl(this._self, this._then);

  final _SetupUserInformationState _self;
  final $Res Function(_SetupUserInformationState) _then;

/// Create a copy of SetupUserInformationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? gender = null,Object? age = null,Object? height = null,Object? weight = null,Object? currentBodyFat = null,Object? movementTime = null,Object? developmentSpeed = null,Object? goal = null,Object? targetBodyFat = null,Object? targetWeight = null,Object? isSetupInformationCompleted = null,}) {
  return _then(_SetupUserInformationState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as SetupUserInformationStep,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,currentBodyFat: null == currentBodyFat ? _self.currentBodyFat : currentBodyFat // ignore: cast_nullable_to_non_nullable
as double,movementTime: null == movementTime ? _self.movementTime : movementTime // ignore: cast_nullable_to_non_nullable
as MovementTime,developmentSpeed: null == developmentSpeed ? _self.developmentSpeed : developmentSpeed // ignore: cast_nullable_to_non_nullable
as DevelopmentSpeed,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as Goal,targetBodyFat: null == targetBodyFat ? _self.targetBodyFat : targetBodyFat // ignore: cast_nullable_to_non_nullable
as double,targetWeight: null == targetWeight ? _self.targetWeight : targetWeight // ignore: cast_nullable_to_non_nullable
as String,isSetupInformationCompleted: null == isSetupInformationCompleted ? _self.isSetupInformationCompleted : isSetupInformationCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
