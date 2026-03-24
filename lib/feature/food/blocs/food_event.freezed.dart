// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodEvent {

 MealType get mealType;
/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodEventCopyWith<FoodEvent> get copyWith => _$FoodEventCopyWithImpl<FoodEvent>(this as FoodEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodEvent&&(identical(other.mealType, mealType) || other.mealType == mealType));
}


@override
int get hashCode => Object.hash(runtimeType,mealType);

@override
String toString() {
  return 'FoodEvent(mealType: $mealType)';
}


}

/// @nodoc
abstract mixin class $FoodEventCopyWith<$Res>  {
  factory $FoodEventCopyWith(FoodEvent value, $Res Function(FoodEvent) _then) = _$FoodEventCopyWithImpl;
@useResult
$Res call({
 MealType mealType
});




}
/// @nodoc
class _$FoodEventCopyWithImpl<$Res>
    implements $FoodEventCopyWith<$Res> {
  _$FoodEventCopyWithImpl(this._self, this._then);

  final FoodEvent _self;
  final $Res Function(FoodEvent) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mealType = null,}) {
  return _then(_self.copyWith(
mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodEvent].
extension FoodEventPatterns on FoodEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectMealType value)?  selectMealType,TResult Function( AddToMeal value)?  addToMeal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectMealType() when selectMealType != null:
return selectMealType(_that);case AddToMeal() when addToMeal != null:
return addToMeal(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectMealType value)  selectMealType,required TResult Function( AddToMeal value)  addToMeal,}){
final _that = this;
switch (_that) {
case SelectMealType():
return selectMealType(_that);case AddToMeal():
return addToMeal(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectMealType value)?  selectMealType,TResult? Function( AddToMeal value)?  addToMeal,}){
final _that = this;
switch (_that) {
case SelectMealType() when selectMealType != null:
return selectMealType(_that);case AddToMeal() when addToMeal != null:
return addToMeal(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MealType mealType)?  selectMealType,TResult Function( FoodEntity food,  int quantity,  MealType mealType)?  addToMeal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectMealType() when selectMealType != null:
return selectMealType(_that.mealType);case AddToMeal() when addToMeal != null:
return addToMeal(_that.food,_that.quantity,_that.mealType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MealType mealType)  selectMealType,required TResult Function( FoodEntity food,  int quantity,  MealType mealType)  addToMeal,}) {final _that = this;
switch (_that) {
case SelectMealType():
return selectMealType(_that.mealType);case AddToMeal():
return addToMeal(_that.food,_that.quantity,_that.mealType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MealType mealType)?  selectMealType,TResult? Function( FoodEntity food,  int quantity,  MealType mealType)?  addToMeal,}) {final _that = this;
switch (_that) {
case SelectMealType() when selectMealType != null:
return selectMealType(_that.mealType);case AddToMeal() when addToMeal != null:
return addToMeal(_that.food,_that.quantity,_that.mealType);case _:
  return null;

}
}

}

/// @nodoc


class SelectMealType implements FoodEvent {
  const SelectMealType(this.mealType);
  

@override final  MealType mealType;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectMealTypeCopyWith<SelectMealType> get copyWith => _$SelectMealTypeCopyWithImpl<SelectMealType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectMealType&&(identical(other.mealType, mealType) || other.mealType == mealType));
}


@override
int get hashCode => Object.hash(runtimeType,mealType);

@override
String toString() {
  return 'FoodEvent.selectMealType(mealType: $mealType)';
}


}

/// @nodoc
abstract mixin class $SelectMealTypeCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $SelectMealTypeCopyWith(SelectMealType value, $Res Function(SelectMealType) _then) = _$SelectMealTypeCopyWithImpl;
@override @useResult
$Res call({
 MealType mealType
});




}
/// @nodoc
class _$SelectMealTypeCopyWithImpl<$Res>
    implements $SelectMealTypeCopyWith<$Res> {
  _$SelectMealTypeCopyWithImpl(this._self, this._then);

  final SelectMealType _self;
  final $Res Function(SelectMealType) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mealType = null,}) {
  return _then(SelectMealType(
null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,
  ));
}


}

/// @nodoc


class AddToMeal implements FoodEvent {
  const AddToMeal({required this.food, required this.quantity, required this.mealType});
  

 final  FoodEntity food;
 final  int quantity;
@override final  MealType mealType;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToMealCopyWith<AddToMeal> get copyWith => _$AddToMealCopyWithImpl<AddToMeal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToMeal&&(identical(other.food, food) || other.food == food)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.mealType, mealType) || other.mealType == mealType));
}


@override
int get hashCode => Object.hash(runtimeType,food,quantity,mealType);

@override
String toString() {
  return 'FoodEvent.addToMeal(food: $food, quantity: $quantity, mealType: $mealType)';
}


}

/// @nodoc
abstract mixin class $AddToMealCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $AddToMealCopyWith(AddToMeal value, $Res Function(AddToMeal) _then) = _$AddToMealCopyWithImpl;
@override @useResult
$Res call({
 FoodEntity food, int quantity, MealType mealType
});


$FoodEntityCopyWith<$Res> get food;

}
/// @nodoc
class _$AddToMealCopyWithImpl<$Res>
    implements $AddToMealCopyWith<$Res> {
  _$AddToMealCopyWithImpl(this._self, this._then);

  final AddToMeal _self;
  final $Res Function(AddToMeal) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? food = null,Object? quantity = null,Object? mealType = null,}) {
  return _then(AddToMeal(
food: null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as FoodEntity,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,
  ));
}

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodEntityCopyWith<$Res> get food {
  
  return $FoodEntityCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}

// dart format on
