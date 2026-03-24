// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 bool get isLoading; List<MealLogEntity> get todayLogs; double get calorieGoal; double get proteinGoal; double get carbGoal; double get fatGoal;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.todayLogs, todayLogs)&&(identical(other.calorieGoal, calorieGoal) || other.calorieGoal == calorieGoal)&&(identical(other.proteinGoal, proteinGoal) || other.proteinGoal == proteinGoal)&&(identical(other.carbGoal, carbGoal) || other.carbGoal == carbGoal)&&(identical(other.fatGoal, fatGoal) || other.fatGoal == fatGoal));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(todayLogs),calorieGoal,proteinGoal,carbGoal,fatGoal);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, todayLogs: $todayLogs, calorieGoal: $calorieGoal, proteinGoal: $proteinGoal, carbGoal: $carbGoal, fatGoal: $fatGoal)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<MealLogEntity> todayLogs, double calorieGoal, double proteinGoal, double carbGoal, double fatGoal
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? todayLogs = null,Object? calorieGoal = null,Object? proteinGoal = null,Object? carbGoal = null,Object? fatGoal = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,todayLogs: null == todayLogs ? _self.todayLogs : todayLogs // ignore: cast_nullable_to_non_nullable
as List<MealLogEntity>,calorieGoal: null == calorieGoal ? _self.calorieGoal : calorieGoal // ignore: cast_nullable_to_non_nullable
as double,proteinGoal: null == proteinGoal ? _self.proteinGoal : proteinGoal // ignore: cast_nullable_to_non_nullable
as double,carbGoal: null == carbGoal ? _self.carbGoal : carbGoal // ignore: cast_nullable_to_non_nullable
as double,fatGoal: null == fatGoal ? _self.fatGoal : fatGoal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<MealLogEntity> todayLogs,  double calorieGoal,  double proteinGoal,  double carbGoal,  double fatGoal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.todayLogs,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<MealLogEntity> todayLogs,  double calorieGoal,  double proteinGoal,  double carbGoal,  double fatGoal)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isLoading,_that.todayLogs,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<MealLogEntity> todayLogs,  double calorieGoal,  double proteinGoal,  double carbGoal,  double fatGoal)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.todayLogs,_that.calorieGoal,_that.proteinGoal,_that.carbGoal,_that.fatGoal);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.isLoading = false, final  List<MealLogEntity> todayLogs = const [], this.calorieGoal = 2000, this.proteinGoal = 150, this.carbGoal = 250, this.fatGoal = 65}): _todayLogs = todayLogs,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<MealLogEntity> _todayLogs;
@override@JsonKey() List<MealLogEntity> get todayLogs {
  if (_todayLogs is EqualUnmodifiableListView) return _todayLogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayLogs);
}

@override@JsonKey() final  double calorieGoal;
@override@JsonKey() final  double proteinGoal;
@override@JsonKey() final  double carbGoal;
@override@JsonKey() final  double fatGoal;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._todayLogs, _todayLogs)&&(identical(other.calorieGoal, calorieGoal) || other.calorieGoal == calorieGoal)&&(identical(other.proteinGoal, proteinGoal) || other.proteinGoal == proteinGoal)&&(identical(other.carbGoal, carbGoal) || other.carbGoal == carbGoal)&&(identical(other.fatGoal, fatGoal) || other.fatGoal == fatGoal));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_todayLogs),calorieGoal,proteinGoal,carbGoal,fatGoal);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, todayLogs: $todayLogs, calorieGoal: $calorieGoal, proteinGoal: $proteinGoal, carbGoal: $carbGoal, fatGoal: $fatGoal)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<MealLogEntity> todayLogs, double calorieGoal, double proteinGoal, double carbGoal, double fatGoal
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? todayLogs = null,Object? calorieGoal = null,Object? proteinGoal = null,Object? carbGoal = null,Object? fatGoal = null,}) {
  return _then(_HomeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,todayLogs: null == todayLogs ? _self._todayLogs : todayLogs // ignore: cast_nullable_to_non_nullable
as List<MealLogEntity>,calorieGoal: null == calorieGoal ? _self.calorieGoal : calorieGoal // ignore: cast_nullable_to_non_nullable
as double,proteinGoal: null == proteinGoal ? _self.proteinGoal : proteinGoal // ignore: cast_nullable_to_non_nullable
as double,carbGoal: null == carbGoal ? _self.carbGoal : carbGoal // ignore: cast_nullable_to_non_nullable
as double,fatGoal: null == fatGoal ? _self.fatGoal : fatGoal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
