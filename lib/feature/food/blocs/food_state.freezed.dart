// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodState {

 bool get isLoading; bool get isSaved; MealType get selectedMealType; String? get error;
/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodStateCopyWith<FoodState> get copyWith => _$FoodStateCopyWithImpl<FoodState>(this as FoodState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.selectedMealType, selectedMealType) || other.selectedMealType == selectedMealType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSaved,selectedMealType,error);

@override
String toString() {
  return 'FoodState(isLoading: $isLoading, isSaved: $isSaved, selectedMealType: $selectedMealType, error: $error)';
}


}

/// @nodoc
abstract mixin class $FoodStateCopyWith<$Res>  {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) _then) = _$FoodStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSaved, MealType selectedMealType, String? error
});




}
/// @nodoc
class _$FoodStateCopyWithImpl<$Res>
    implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._self, this._then);

  final FoodState _self;
  final $Res Function(FoodState) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSaved = null,Object? selectedMealType = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,selectedMealType: null == selectedMealType ? _self.selectedMealType : selectedMealType // ignore: cast_nullable_to_non_nullable
as MealType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodState].
extension FoodStatePatterns on FoodState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodState value)  $default,){
final _that = this;
switch (_that) {
case _FoodState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodState value)?  $default,){
final _that = this;
switch (_that) {
case _FoodState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSaved,  MealType selectedMealType,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodState() when $default != null:
return $default(_that.isLoading,_that.isSaved,_that.selectedMealType,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSaved,  MealType selectedMealType,  String? error)  $default,) {final _that = this;
switch (_that) {
case _FoodState():
return $default(_that.isLoading,_that.isSaved,_that.selectedMealType,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSaved,  MealType selectedMealType,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _FoodState() when $default != null:
return $default(_that.isLoading,_that.isSaved,_that.selectedMealType,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FoodState implements FoodState {
  const _FoodState({this.isLoading = false, this.isSaved = false, this.selectedMealType = MealType.breakfast, this.error});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaved;
@override@JsonKey() final  MealType selectedMealType;
@override final  String? error;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodStateCopyWith<_FoodState> get copyWith => __$FoodStateCopyWithImpl<_FoodState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.selectedMealType, selectedMealType) || other.selectedMealType == selectedMealType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSaved,selectedMealType,error);

@override
String toString() {
  return 'FoodState(isLoading: $isLoading, isSaved: $isSaved, selectedMealType: $selectedMealType, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$FoodStateCopyWith(_FoodState value, $Res Function(_FoodState) _then) = __$FoodStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSaved, MealType selectedMealType, String? error
});




}
/// @nodoc
class __$FoodStateCopyWithImpl<$Res>
    implements _$FoodStateCopyWith<$Res> {
  __$FoodStateCopyWithImpl(this._self, this._then);

  final _FoodState _self;
  final $Res Function(_FoodState) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSaved = null,Object? selectedMealType = null,Object? error = freezed,}) {
  return _then(_FoodState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,selectedMealType: null == selectedMealType ? _self.selectedMealType : selectedMealType // ignore: cast_nullable_to_non_nullable
as MealType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
