// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_user_infomation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputUserInfomation {

 Gender get gender; int get age; double get heightCm; double get weightKg; double get currentBodyFatPercent; Goal get goal; double get targetBodyFatPercent; double get targetWeightKg; DevelopmentSpeed get developmentSpeed;
/// Create a copy of InputUserInfomation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputUserInfomationCopyWith<InputUserInfomation> get copyWith => _$InputUserInfomationCopyWithImpl<InputUserInfomation>(this as InputUserInfomation, _$identity);

  /// Serializes this InputUserInfomation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputUserInfomation&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.currentBodyFatPercent, currentBodyFatPercent) || other.currentBodyFatPercent == currentBodyFatPercent)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetBodyFatPercent, targetBodyFatPercent) || other.targetBodyFatPercent == targetBodyFatPercent)&&(identical(other.targetWeightKg, targetWeightKg) || other.targetWeightKg == targetWeightKg)&&(identical(other.developmentSpeed, developmentSpeed) || other.developmentSpeed == developmentSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,age,heightCm,weightKg,currentBodyFatPercent,goal,targetBodyFatPercent,targetWeightKg,developmentSpeed);

@override
String toString() {
  return 'InputUserInfomation(gender: $gender, age: $age, heightCm: $heightCm, weightKg: $weightKg, currentBodyFatPercent: $currentBodyFatPercent, goal: $goal, targetBodyFatPercent: $targetBodyFatPercent, targetWeightKg: $targetWeightKg, developmentSpeed: $developmentSpeed)';
}


}

/// @nodoc
abstract mixin class $InputUserInfomationCopyWith<$Res>  {
  factory $InputUserInfomationCopyWith(InputUserInfomation value, $Res Function(InputUserInfomation) _then) = _$InputUserInfomationCopyWithImpl;
@useResult
$Res call({
 Gender gender, int age, double heightCm, double weightKg, double currentBodyFatPercent, Goal goal, double targetBodyFatPercent, double targetWeightKg, DevelopmentSpeed developmentSpeed
});




}
/// @nodoc
class _$InputUserInfomationCopyWithImpl<$Res>
    implements $InputUserInfomationCopyWith<$Res> {
  _$InputUserInfomationCopyWithImpl(this._self, this._then);

  final InputUserInfomation _self;
  final $Res Function(InputUserInfomation) _then;

/// Create a copy of InputUserInfomation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? age = null,Object? heightCm = null,Object? weightKg = null,Object? currentBodyFatPercent = null,Object? goal = null,Object? targetBodyFatPercent = null,Object? targetWeightKg = null,Object? developmentSpeed = null,}) {
  return _then(_self.copyWith(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,currentBodyFatPercent: null == currentBodyFatPercent ? _self.currentBodyFatPercent : currentBodyFatPercent // ignore: cast_nullable_to_non_nullable
as double,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as Goal,targetBodyFatPercent: null == targetBodyFatPercent ? _self.targetBodyFatPercent : targetBodyFatPercent // ignore: cast_nullable_to_non_nullable
as double,targetWeightKg: null == targetWeightKg ? _self.targetWeightKg : targetWeightKg // ignore: cast_nullable_to_non_nullable
as double,developmentSpeed: null == developmentSpeed ? _self.developmentSpeed : developmentSpeed // ignore: cast_nullable_to_non_nullable
as DevelopmentSpeed,
  ));
}

}


/// Adds pattern-matching-related methods to [InputUserInfomation].
extension InputUserInfomationPatterns on InputUserInfomation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputUserInfomation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputUserInfomation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputUserInfomation value)  $default,){
final _that = this;
switch (_that) {
case _InputUserInfomation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputUserInfomation value)?  $default,){
final _that = this;
switch (_that) {
case _InputUserInfomation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Gender gender,  int age,  double heightCm,  double weightKg,  double currentBodyFatPercent,  Goal goal,  double targetBodyFatPercent,  double targetWeightKg,  DevelopmentSpeed developmentSpeed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputUserInfomation() when $default != null:
return $default(_that.gender,_that.age,_that.heightCm,_that.weightKg,_that.currentBodyFatPercent,_that.goal,_that.targetBodyFatPercent,_that.targetWeightKg,_that.developmentSpeed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Gender gender,  int age,  double heightCm,  double weightKg,  double currentBodyFatPercent,  Goal goal,  double targetBodyFatPercent,  double targetWeightKg,  DevelopmentSpeed developmentSpeed)  $default,) {final _that = this;
switch (_that) {
case _InputUserInfomation():
return $default(_that.gender,_that.age,_that.heightCm,_that.weightKg,_that.currentBodyFatPercent,_that.goal,_that.targetBodyFatPercent,_that.targetWeightKg,_that.developmentSpeed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Gender gender,  int age,  double heightCm,  double weightKg,  double currentBodyFatPercent,  Goal goal,  double targetBodyFatPercent,  double targetWeightKg,  DevelopmentSpeed developmentSpeed)?  $default,) {final _that = this;
switch (_that) {
case _InputUserInfomation() when $default != null:
return $default(_that.gender,_that.age,_that.heightCm,_that.weightKg,_that.currentBodyFatPercent,_that.goal,_that.targetBodyFatPercent,_that.targetWeightKg,_that.developmentSpeed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InputUserInfomation implements InputUserInfomation {
  const _InputUserInfomation({required this.gender, required this.age, required this.heightCm, required this.weightKg, required this.currentBodyFatPercent, required this.goal, required this.targetBodyFatPercent, required this.targetWeightKg, required this.developmentSpeed});
  factory _InputUserInfomation.fromJson(Map<String, dynamic> json) => _$InputUserInfomationFromJson(json);

@override final  Gender gender;
@override final  int age;
@override final  double heightCm;
@override final  double weightKg;
@override final  double currentBodyFatPercent;
@override final  Goal goal;
@override final  double targetBodyFatPercent;
@override final  double targetWeightKg;
@override final  DevelopmentSpeed developmentSpeed;

/// Create a copy of InputUserInfomation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputUserInfomationCopyWith<_InputUserInfomation> get copyWith => __$InputUserInfomationCopyWithImpl<_InputUserInfomation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputUserInfomationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputUserInfomation&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.currentBodyFatPercent, currentBodyFatPercent) || other.currentBodyFatPercent == currentBodyFatPercent)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetBodyFatPercent, targetBodyFatPercent) || other.targetBodyFatPercent == targetBodyFatPercent)&&(identical(other.targetWeightKg, targetWeightKg) || other.targetWeightKg == targetWeightKg)&&(identical(other.developmentSpeed, developmentSpeed) || other.developmentSpeed == developmentSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,age,heightCm,weightKg,currentBodyFatPercent,goal,targetBodyFatPercent,targetWeightKg,developmentSpeed);

@override
String toString() {
  return 'InputUserInfomation(gender: $gender, age: $age, heightCm: $heightCm, weightKg: $weightKg, currentBodyFatPercent: $currentBodyFatPercent, goal: $goal, targetBodyFatPercent: $targetBodyFatPercent, targetWeightKg: $targetWeightKg, developmentSpeed: $developmentSpeed)';
}


}

/// @nodoc
abstract mixin class _$InputUserInfomationCopyWith<$Res> implements $InputUserInfomationCopyWith<$Res> {
  factory _$InputUserInfomationCopyWith(_InputUserInfomation value, $Res Function(_InputUserInfomation) _then) = __$InputUserInfomationCopyWithImpl;
@override @useResult
$Res call({
 Gender gender, int age, double heightCm, double weightKg, double currentBodyFatPercent, Goal goal, double targetBodyFatPercent, double targetWeightKg, DevelopmentSpeed developmentSpeed
});




}
/// @nodoc
class __$InputUserInfomationCopyWithImpl<$Res>
    implements _$InputUserInfomationCopyWith<$Res> {
  __$InputUserInfomationCopyWithImpl(this._self, this._then);

  final _InputUserInfomation _self;
  final $Res Function(_InputUserInfomation) _then;

/// Create a copy of InputUserInfomation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? age = null,Object? heightCm = null,Object? weightKg = null,Object? currentBodyFatPercent = null,Object? goal = null,Object? targetBodyFatPercent = null,Object? targetWeightKg = null,Object? developmentSpeed = null,}) {
  return _then(_InputUserInfomation(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,currentBodyFatPercent: null == currentBodyFatPercent ? _self.currentBodyFatPercent : currentBodyFatPercent // ignore: cast_nullable_to_non_nullable
as double,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as Goal,targetBodyFatPercent: null == targetBodyFatPercent ? _self.targetBodyFatPercent : targetBodyFatPercent // ignore: cast_nullable_to_non_nullable
as double,targetWeightKg: null == targetWeightKg ? _self.targetWeightKg : targetWeightKg // ignore: cast_nullable_to_non_nullable
as double,developmentSpeed: null == developmentSpeed ? _self.developmentSpeed : developmentSpeed // ignore: cast_nullable_to_non_nullable
as DevelopmentSpeed,
  ));
}


}

// dart format on
