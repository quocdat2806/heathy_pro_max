// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodEntity {

 String get id; String get name; int get categoryId; String get servingUnit; int get weightGram; Nutrition get nutrition;
/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodEntityCopyWith<FoodEntity> get copyWith => _$FoodEntityCopyWithImpl<FoodEntity>(this as FoodEntity, _$identity);

  /// Serializes this FoodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.servingUnit, servingUnit) || other.servingUnit == servingUnit)&&(identical(other.weightGram, weightGram) || other.weightGram == weightGram)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,servingUnit,weightGram,nutrition);

@override
String toString() {
  return 'FoodEntity(id: $id, name: $name, categoryId: $categoryId, servingUnit: $servingUnit, weightGram: $weightGram, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class $FoodEntityCopyWith<$Res>  {
  factory $FoodEntityCopyWith(FoodEntity value, $Res Function(FoodEntity) _then) = _$FoodEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, int categoryId, String servingUnit, int weightGram, Nutrition nutrition
});


$NutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class _$FoodEntityCopyWithImpl<$Res>
    implements $FoodEntityCopyWith<$Res> {
  _$FoodEntityCopyWithImpl(this._self, this._then);

  final FoodEntity _self;
  final $Res Function(FoodEntity) _then;

/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? servingUnit = null,Object? weightGram = null,Object? nutrition = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,servingUnit: null == servingUnit ? _self.servingUnit : servingUnit // ignore: cast_nullable_to_non_nullable
as String,weightGram: null == weightGram ? _self.weightGram : weightGram // ignore: cast_nullable_to_non_nullable
as int,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as Nutrition,
  ));
}
/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCopyWith<$Res> get nutrition {
  
  return $NutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodEntity].
extension FoodEntityPatterns on FoodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int categoryId,  String servingUnit,  int weightGram,  Nutrition nutrition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodEntity() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.servingUnit,_that.weightGram,_that.nutrition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int categoryId,  String servingUnit,  int weightGram,  Nutrition nutrition)  $default,) {final _that = this;
switch (_that) {
case _FoodEntity():
return $default(_that.id,_that.name,_that.categoryId,_that.servingUnit,_that.weightGram,_that.nutrition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int categoryId,  String servingUnit,  int weightGram,  Nutrition nutrition)?  $default,) {final _that = this;
switch (_that) {
case _FoodEntity() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.servingUnit,_that.weightGram,_that.nutrition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodEntity implements FoodEntity {
  const _FoodEntity({required this.id, required this.name, required this.categoryId, required this.servingUnit, required this.weightGram, required this.nutrition});
  factory _FoodEntity.fromJson(Map<String, dynamic> json) => _$FoodEntityFromJson(json);

@override final  String id;
@override final  String name;
@override final  int categoryId;
@override final  String servingUnit;
@override final  int weightGram;
@override final  Nutrition nutrition;

/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodEntityCopyWith<_FoodEntity> get copyWith => __$FoodEntityCopyWithImpl<_FoodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.servingUnit, servingUnit) || other.servingUnit == servingUnit)&&(identical(other.weightGram, weightGram) || other.weightGram == weightGram)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,servingUnit,weightGram,nutrition);

@override
String toString() {
  return 'FoodEntity(id: $id, name: $name, categoryId: $categoryId, servingUnit: $servingUnit, weightGram: $weightGram, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class _$FoodEntityCopyWith<$Res> implements $FoodEntityCopyWith<$Res> {
  factory _$FoodEntityCopyWith(_FoodEntity value, $Res Function(_FoodEntity) _then) = __$FoodEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int categoryId, String servingUnit, int weightGram, Nutrition nutrition
});


@override $NutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class __$FoodEntityCopyWithImpl<$Res>
    implements _$FoodEntityCopyWith<$Res> {
  __$FoodEntityCopyWithImpl(this._self, this._then);

  final _FoodEntity _self;
  final $Res Function(_FoodEntity) _then;

/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? servingUnit = null,Object? weightGram = null,Object? nutrition = null,}) {
  return _then(_FoodEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,servingUnit: null == servingUnit ? _self.servingUnit : servingUnit // ignore: cast_nullable_to_non_nullable
as String,weightGram: null == weightGram ? _self.weightGram : weightGram // ignore: cast_nullable_to_non_nullable
as int,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as Nutrition,
  ));
}

/// Create a copy of FoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCopyWith<$Res> get nutrition {
  
  return $NutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}

// dart format on
