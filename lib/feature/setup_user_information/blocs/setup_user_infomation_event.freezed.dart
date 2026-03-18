// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_user_infomation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetupUserInformationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetupUserInformationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetupUserInformationEvent()';
}


}

/// @nodoc
class $SetupUserInformationEventCopyWith<$Res>  {
$SetupUserInformationEventCopyWith(SetupUserInformationEvent _, $Res Function(SetupUserInformationEvent) __);
}


/// Adds pattern-matching-related methods to [SetupUserInformationEvent].
extension SetupUserInformationEventPatterns on SetupUserInformationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NextStep value)?  nextStep,TResult Function( PreviousStep value)?  previousStep,TResult Function( SetGender value)?  setGender,TResult Function( SetAge value)?  setAge,TResult Function( SetHeight value)?  setHeight,TResult Function( SetWeight value)?  setWeight,TResult Function( SetCurrentBodyFat value)?  setCurrentBodyFat,TResult Function( SetTargetBodyFat value)?  setTargetBodyFat,TResult Function( SetTargetWeight value)?  setTargetWeight,TResult Function( SetSetupInformationCompleted value)?  setSetupInformationCompleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NextStep() when nextStep != null:
return nextStep(_that);case PreviousStep() when previousStep != null:
return previousStep(_that);case SetGender() when setGender != null:
return setGender(_that);case SetAge() when setAge != null:
return setAge(_that);case SetHeight() when setHeight != null:
return setHeight(_that);case SetWeight() when setWeight != null:
return setWeight(_that);case SetCurrentBodyFat() when setCurrentBodyFat != null:
return setCurrentBodyFat(_that);case SetTargetBodyFat() when setTargetBodyFat != null:
return setTargetBodyFat(_that);case SetTargetWeight() when setTargetWeight != null:
return setTargetWeight(_that);case SetSetupInformationCompleted() when setSetupInformationCompleted != null:
return setSetupInformationCompleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NextStep value)  nextStep,required TResult Function( PreviousStep value)  previousStep,required TResult Function( SetGender value)  setGender,required TResult Function( SetAge value)  setAge,required TResult Function( SetHeight value)  setHeight,required TResult Function( SetWeight value)  setWeight,required TResult Function( SetCurrentBodyFat value)  setCurrentBodyFat,required TResult Function( SetTargetBodyFat value)  setTargetBodyFat,required TResult Function( SetTargetWeight value)  setTargetWeight,required TResult Function( SetSetupInformationCompleted value)  setSetupInformationCompleted,}){
final _that = this;
switch (_that) {
case NextStep():
return nextStep(_that);case PreviousStep():
return previousStep(_that);case SetGender():
return setGender(_that);case SetAge():
return setAge(_that);case SetHeight():
return setHeight(_that);case SetWeight():
return setWeight(_that);case SetCurrentBodyFat():
return setCurrentBodyFat(_that);case SetTargetBodyFat():
return setTargetBodyFat(_that);case SetTargetWeight():
return setTargetWeight(_that);case SetSetupInformationCompleted():
return setSetupInformationCompleted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NextStep value)?  nextStep,TResult? Function( PreviousStep value)?  previousStep,TResult? Function( SetGender value)?  setGender,TResult? Function( SetAge value)?  setAge,TResult? Function( SetHeight value)?  setHeight,TResult? Function( SetWeight value)?  setWeight,TResult? Function( SetCurrentBodyFat value)?  setCurrentBodyFat,TResult? Function( SetTargetBodyFat value)?  setTargetBodyFat,TResult? Function( SetTargetWeight value)?  setTargetWeight,TResult? Function( SetSetupInformationCompleted value)?  setSetupInformationCompleted,}){
final _that = this;
switch (_that) {
case NextStep() when nextStep != null:
return nextStep(_that);case PreviousStep() when previousStep != null:
return previousStep(_that);case SetGender() when setGender != null:
return setGender(_that);case SetAge() when setAge != null:
return setAge(_that);case SetHeight() when setHeight != null:
return setHeight(_that);case SetWeight() when setWeight != null:
return setWeight(_that);case SetCurrentBodyFat() when setCurrentBodyFat != null:
return setCurrentBodyFat(_that);case SetTargetBodyFat() when setTargetBodyFat != null:
return setTargetBodyFat(_that);case SetTargetWeight() when setTargetWeight != null:
return setTargetWeight(_that);case SetSetupInformationCompleted() when setSetupInformationCompleted != null:
return setSetupInformationCompleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  nextStep,TResult Function()?  previousStep,TResult Function( Gender gender)?  setGender,TResult Function( String age)?  setAge,TResult Function( String height)?  setHeight,TResult Function( String weight)?  setWeight,TResult Function( double currentBodyFat)?  setCurrentBodyFat,TResult Function( double targetBodyFat)?  setTargetBodyFat,TResult Function( String targetWeight)?  setTargetWeight,TResult Function( bool isSetupInformationCompleted)?  setSetupInformationCompleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NextStep() when nextStep != null:
return nextStep();case PreviousStep() when previousStep != null:
return previousStep();case SetGender() when setGender != null:
return setGender(_that.gender);case SetAge() when setAge != null:
return setAge(_that.age);case SetHeight() when setHeight != null:
return setHeight(_that.height);case SetWeight() when setWeight != null:
return setWeight(_that.weight);case SetCurrentBodyFat() when setCurrentBodyFat != null:
return setCurrentBodyFat(_that.currentBodyFat);case SetTargetBodyFat() when setTargetBodyFat != null:
return setTargetBodyFat(_that.targetBodyFat);case SetTargetWeight() when setTargetWeight != null:
return setTargetWeight(_that.targetWeight);case SetSetupInformationCompleted() when setSetupInformationCompleted != null:
return setSetupInformationCompleted(_that.isSetupInformationCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  nextStep,required TResult Function()  previousStep,required TResult Function( Gender gender)  setGender,required TResult Function( String age)  setAge,required TResult Function( String height)  setHeight,required TResult Function( String weight)  setWeight,required TResult Function( double currentBodyFat)  setCurrentBodyFat,required TResult Function( double targetBodyFat)  setTargetBodyFat,required TResult Function( String targetWeight)  setTargetWeight,required TResult Function( bool isSetupInformationCompleted)  setSetupInformationCompleted,}) {final _that = this;
switch (_that) {
case NextStep():
return nextStep();case PreviousStep():
return previousStep();case SetGender():
return setGender(_that.gender);case SetAge():
return setAge(_that.age);case SetHeight():
return setHeight(_that.height);case SetWeight():
return setWeight(_that.weight);case SetCurrentBodyFat():
return setCurrentBodyFat(_that.currentBodyFat);case SetTargetBodyFat():
return setTargetBodyFat(_that.targetBodyFat);case SetTargetWeight():
return setTargetWeight(_that.targetWeight);case SetSetupInformationCompleted():
return setSetupInformationCompleted(_that.isSetupInformationCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  nextStep,TResult? Function()?  previousStep,TResult? Function( Gender gender)?  setGender,TResult? Function( String age)?  setAge,TResult? Function( String height)?  setHeight,TResult? Function( String weight)?  setWeight,TResult? Function( double currentBodyFat)?  setCurrentBodyFat,TResult? Function( double targetBodyFat)?  setTargetBodyFat,TResult? Function( String targetWeight)?  setTargetWeight,TResult? Function( bool isSetupInformationCompleted)?  setSetupInformationCompleted,}) {final _that = this;
switch (_that) {
case NextStep() when nextStep != null:
return nextStep();case PreviousStep() when previousStep != null:
return previousStep();case SetGender() when setGender != null:
return setGender(_that.gender);case SetAge() when setAge != null:
return setAge(_that.age);case SetHeight() when setHeight != null:
return setHeight(_that.height);case SetWeight() when setWeight != null:
return setWeight(_that.weight);case SetCurrentBodyFat() when setCurrentBodyFat != null:
return setCurrentBodyFat(_that.currentBodyFat);case SetTargetBodyFat() when setTargetBodyFat != null:
return setTargetBodyFat(_that.targetBodyFat);case SetTargetWeight() when setTargetWeight != null:
return setTargetWeight(_that.targetWeight);case SetSetupInformationCompleted() when setSetupInformationCompleted != null:
return setSetupInformationCompleted(_that.isSetupInformationCompleted);case _:
  return null;

}
}

}

/// @nodoc


class NextStep implements SetupUserInformationEvent {
  const NextStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetupUserInformationEvent.nextStep()';
}


}




/// @nodoc


class PreviousStep implements SetupUserInformationEvent {
  const PreviousStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetupUserInformationEvent.previousStep()';
}


}




/// @nodoc


class SetGender implements SetupUserInformationEvent {
  const SetGender(this.gender);
  

 final  Gender gender;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetGenderCopyWith<SetGender> get copyWith => _$SetGenderCopyWithImpl<SetGender>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetGender&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,gender);

@override
String toString() {
  return 'SetupUserInformationEvent.setGender(gender: $gender)';
}


}

/// @nodoc
abstract mixin class $SetGenderCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetGenderCopyWith(SetGender value, $Res Function(SetGender) _then) = _$SetGenderCopyWithImpl;
@useResult
$Res call({
 Gender gender
});




}
/// @nodoc
class _$SetGenderCopyWithImpl<$Res>
    implements $SetGenderCopyWith<$Res> {
  _$SetGenderCopyWithImpl(this._self, this._then);

  final SetGender _self;
  final $Res Function(SetGender) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gender = null,}) {
  return _then(SetGender(
null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,
  ));
}


}

/// @nodoc


class SetAge implements SetupUserInformationEvent {
  const SetAge(this.age);
  

 final  String age;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetAgeCopyWith<SetAge> get copyWith => _$SetAgeCopyWithImpl<SetAge>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetAge&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,age);

@override
String toString() {
  return 'SetupUserInformationEvent.setAge(age: $age)';
}


}

/// @nodoc
abstract mixin class $SetAgeCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetAgeCopyWith(SetAge value, $Res Function(SetAge) _then) = _$SetAgeCopyWithImpl;
@useResult
$Res call({
 String age
});




}
/// @nodoc
class _$SetAgeCopyWithImpl<$Res>
    implements $SetAgeCopyWith<$Res> {
  _$SetAgeCopyWithImpl(this._self, this._then);

  final SetAge _self;
  final $Res Function(SetAge) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? age = null,}) {
  return _then(SetAge(
null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetHeight implements SetupUserInformationEvent {
  const SetHeight(this.height);
  

 final  String height;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetHeightCopyWith<SetHeight> get copyWith => _$SetHeightCopyWithImpl<SetHeight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetHeight&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,height);

@override
String toString() {
  return 'SetupUserInformationEvent.setHeight(height: $height)';
}


}

/// @nodoc
abstract mixin class $SetHeightCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetHeightCopyWith(SetHeight value, $Res Function(SetHeight) _then) = _$SetHeightCopyWithImpl;
@useResult
$Res call({
 String height
});




}
/// @nodoc
class _$SetHeightCopyWithImpl<$Res>
    implements $SetHeightCopyWith<$Res> {
  _$SetHeightCopyWithImpl(this._self, this._then);

  final SetHeight _self;
  final $Res Function(SetHeight) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? height = null,}) {
  return _then(SetHeight(
null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetWeight implements SetupUserInformationEvent {
  const SetWeight(this.weight);
  

 final  String weight;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetWeightCopyWith<SetWeight> get copyWith => _$SetWeightCopyWithImpl<SetWeight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetWeight&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,weight);

@override
String toString() {
  return 'SetupUserInformationEvent.setWeight(weight: $weight)';
}


}

/// @nodoc
abstract mixin class $SetWeightCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetWeightCopyWith(SetWeight value, $Res Function(SetWeight) _then) = _$SetWeightCopyWithImpl;
@useResult
$Res call({
 String weight
});




}
/// @nodoc
class _$SetWeightCopyWithImpl<$Res>
    implements $SetWeightCopyWith<$Res> {
  _$SetWeightCopyWithImpl(this._self, this._then);

  final SetWeight _self;
  final $Res Function(SetWeight) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weight = null,}) {
  return _then(SetWeight(
null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetCurrentBodyFat implements SetupUserInformationEvent {
  const SetCurrentBodyFat(this.currentBodyFat);
  

 final  double currentBodyFat;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetCurrentBodyFatCopyWith<SetCurrentBodyFat> get copyWith => _$SetCurrentBodyFatCopyWithImpl<SetCurrentBodyFat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetCurrentBodyFat&&(identical(other.currentBodyFat, currentBodyFat) || other.currentBodyFat == currentBodyFat));
}


@override
int get hashCode => Object.hash(runtimeType,currentBodyFat);

@override
String toString() {
  return 'SetupUserInformationEvent.setCurrentBodyFat(currentBodyFat: $currentBodyFat)';
}


}

/// @nodoc
abstract mixin class $SetCurrentBodyFatCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetCurrentBodyFatCopyWith(SetCurrentBodyFat value, $Res Function(SetCurrentBodyFat) _then) = _$SetCurrentBodyFatCopyWithImpl;
@useResult
$Res call({
 double currentBodyFat
});




}
/// @nodoc
class _$SetCurrentBodyFatCopyWithImpl<$Res>
    implements $SetCurrentBodyFatCopyWith<$Res> {
  _$SetCurrentBodyFatCopyWithImpl(this._self, this._then);

  final SetCurrentBodyFat _self;
  final $Res Function(SetCurrentBodyFat) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentBodyFat = null,}) {
  return _then(SetCurrentBodyFat(
null == currentBodyFat ? _self.currentBodyFat : currentBodyFat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SetTargetBodyFat implements SetupUserInformationEvent {
  const SetTargetBodyFat(this.targetBodyFat);
  

 final  double targetBodyFat;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetTargetBodyFatCopyWith<SetTargetBodyFat> get copyWith => _$SetTargetBodyFatCopyWithImpl<SetTargetBodyFat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetTargetBodyFat&&(identical(other.targetBodyFat, targetBodyFat) || other.targetBodyFat == targetBodyFat));
}


@override
int get hashCode => Object.hash(runtimeType,targetBodyFat);

@override
String toString() {
  return 'SetupUserInformationEvent.setTargetBodyFat(targetBodyFat: $targetBodyFat)';
}


}

/// @nodoc
abstract mixin class $SetTargetBodyFatCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetTargetBodyFatCopyWith(SetTargetBodyFat value, $Res Function(SetTargetBodyFat) _then) = _$SetTargetBodyFatCopyWithImpl;
@useResult
$Res call({
 double targetBodyFat
});




}
/// @nodoc
class _$SetTargetBodyFatCopyWithImpl<$Res>
    implements $SetTargetBodyFatCopyWith<$Res> {
  _$SetTargetBodyFatCopyWithImpl(this._self, this._then);

  final SetTargetBodyFat _self;
  final $Res Function(SetTargetBodyFat) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetBodyFat = null,}) {
  return _then(SetTargetBodyFat(
null == targetBodyFat ? _self.targetBodyFat : targetBodyFat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SetTargetWeight implements SetupUserInformationEvent {
  const SetTargetWeight(this.targetWeight);
  

 final  String targetWeight;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetTargetWeightCopyWith<SetTargetWeight> get copyWith => _$SetTargetWeightCopyWithImpl<SetTargetWeight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetTargetWeight&&(identical(other.targetWeight, targetWeight) || other.targetWeight == targetWeight));
}


@override
int get hashCode => Object.hash(runtimeType,targetWeight);

@override
String toString() {
  return 'SetupUserInformationEvent.setTargetWeight(targetWeight: $targetWeight)';
}


}

/// @nodoc
abstract mixin class $SetTargetWeightCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetTargetWeightCopyWith(SetTargetWeight value, $Res Function(SetTargetWeight) _then) = _$SetTargetWeightCopyWithImpl;
@useResult
$Res call({
 String targetWeight
});




}
/// @nodoc
class _$SetTargetWeightCopyWithImpl<$Res>
    implements $SetTargetWeightCopyWith<$Res> {
  _$SetTargetWeightCopyWithImpl(this._self, this._then);

  final SetTargetWeight _self;
  final $Res Function(SetTargetWeight) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetWeight = null,}) {
  return _then(SetTargetWeight(
null == targetWeight ? _self.targetWeight : targetWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetSetupInformationCompleted implements SetupUserInformationEvent {
  const SetSetupInformationCompleted(this.isSetupInformationCompleted);
  

 final  bool isSetupInformationCompleted;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetSetupInformationCompletedCopyWith<SetSetupInformationCompleted> get copyWith => _$SetSetupInformationCompletedCopyWithImpl<SetSetupInformationCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetSetupInformationCompleted&&(identical(other.isSetupInformationCompleted, isSetupInformationCompleted) || other.isSetupInformationCompleted == isSetupInformationCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,isSetupInformationCompleted);

@override
String toString() {
  return 'SetupUserInformationEvent.setSetupInformationCompleted(isSetupInformationCompleted: $isSetupInformationCompleted)';
}


}

/// @nodoc
abstract mixin class $SetSetupInformationCompletedCopyWith<$Res> implements $SetupUserInformationEventCopyWith<$Res> {
  factory $SetSetupInformationCompletedCopyWith(SetSetupInformationCompleted value, $Res Function(SetSetupInformationCompleted) _then) = _$SetSetupInformationCompletedCopyWithImpl;
@useResult
$Res call({
 bool isSetupInformationCompleted
});




}
/// @nodoc
class _$SetSetupInformationCompletedCopyWithImpl<$Res>
    implements $SetSetupInformationCompletedCopyWith<$Res> {
  _$SetSetupInformationCompletedCopyWithImpl(this._self, this._then);

  final SetSetupInformationCompleted _self;
  final $Res Function(SetSetupInformationCompleted) _then;

/// Create a copy of SetupUserInformationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSetupInformationCompleted = null,}) {
  return _then(SetSetupInformationCompleted(
null == isSetupInformationCompleted ? _self.isSetupInformationCompleted : isSetupInformationCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
