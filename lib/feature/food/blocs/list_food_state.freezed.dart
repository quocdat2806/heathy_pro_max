// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListFoodState {

 List<FoodEntity> get allFoods; List<FoodEntity> get displayedFoods; FoodCategory get category; String get searchQuery; bool get isLoading; bool get hasMore; int get page;
/// Create a copy of ListFoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListFoodStateCopyWith<ListFoodState> get copyWith => _$ListFoodStateCopyWithImpl<ListFoodState>(this as ListFoodState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListFoodState&&const DeepCollectionEquality().equals(other.allFoods, allFoods)&&const DeepCollectionEquality().equals(other.displayedFoods, displayedFoods)&&(identical(other.category, category) || other.category == category)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allFoods),const DeepCollectionEquality().hash(displayedFoods),category,searchQuery,isLoading,hasMore,page);

@override
String toString() {
  return 'ListFoodState(allFoods: $allFoods, displayedFoods: $displayedFoods, category: $category, searchQuery: $searchQuery, isLoading: $isLoading, hasMore: $hasMore, page: $page)';
}


}

/// @nodoc
abstract mixin class $ListFoodStateCopyWith<$Res>  {
  factory $ListFoodStateCopyWith(ListFoodState value, $Res Function(ListFoodState) _then) = _$ListFoodStateCopyWithImpl;
@useResult
$Res call({
 List<FoodEntity> allFoods, List<FoodEntity> displayedFoods, FoodCategory category, String searchQuery, bool isLoading, bool hasMore, int page
});




}
/// @nodoc
class _$ListFoodStateCopyWithImpl<$Res>
    implements $ListFoodStateCopyWith<$Res> {
  _$ListFoodStateCopyWithImpl(this._self, this._then);

  final ListFoodState _self;
  final $Res Function(ListFoodState) _then;

/// Create a copy of ListFoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allFoods = null,Object? displayedFoods = null,Object? category = null,Object? searchQuery = null,Object? isLoading = null,Object? hasMore = null,Object? page = null,}) {
  return _then(_self.copyWith(
allFoods: null == allFoods ? _self.allFoods : allFoods // ignore: cast_nullable_to_non_nullable
as List<FoodEntity>,displayedFoods: null == displayedFoods ? _self.displayedFoods : displayedFoods // ignore: cast_nullable_to_non_nullable
as List<FoodEntity>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as FoodCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ListFoodState].
extension ListFoodStatePatterns on ListFoodState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListFoodState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListFoodState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListFoodState value)  $default,){
final _that = this;
switch (_that) {
case _ListFoodState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListFoodState value)?  $default,){
final _that = this;
switch (_that) {
case _ListFoodState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FoodEntity> allFoods,  List<FoodEntity> displayedFoods,  FoodCategory category,  String searchQuery,  bool isLoading,  bool hasMore,  int page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListFoodState() when $default != null:
return $default(_that.allFoods,_that.displayedFoods,_that.category,_that.searchQuery,_that.isLoading,_that.hasMore,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FoodEntity> allFoods,  List<FoodEntity> displayedFoods,  FoodCategory category,  String searchQuery,  bool isLoading,  bool hasMore,  int page)  $default,) {final _that = this;
switch (_that) {
case _ListFoodState():
return $default(_that.allFoods,_that.displayedFoods,_that.category,_that.searchQuery,_that.isLoading,_that.hasMore,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FoodEntity> allFoods,  List<FoodEntity> displayedFoods,  FoodCategory category,  String searchQuery,  bool isLoading,  bool hasMore,  int page)?  $default,) {final _that = this;
switch (_that) {
case _ListFoodState() when $default != null:
return $default(_that.allFoods,_that.displayedFoods,_that.category,_that.searchQuery,_that.isLoading,_that.hasMore,_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _ListFoodState implements ListFoodState {
  const _ListFoodState({final  List<FoodEntity> allFoods = const [], final  List<FoodEntity> displayedFoods = const [], this.category = FoodCategory.all, this.searchQuery = '', this.isLoading = false, this.hasMore = true, this.page = 0}): _allFoods = allFoods,_displayedFoods = displayedFoods;
  

 final  List<FoodEntity> _allFoods;
@override@JsonKey() List<FoodEntity> get allFoods {
  if (_allFoods is EqualUnmodifiableListView) return _allFoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allFoods);
}

 final  List<FoodEntity> _displayedFoods;
@override@JsonKey() List<FoodEntity> get displayedFoods {
  if (_displayedFoods is EqualUnmodifiableListView) return _displayedFoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_displayedFoods);
}

@override@JsonKey() final  FoodCategory category;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int page;

/// Create a copy of ListFoodState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListFoodStateCopyWith<_ListFoodState> get copyWith => __$ListFoodStateCopyWithImpl<_ListFoodState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListFoodState&&const DeepCollectionEquality().equals(other._allFoods, _allFoods)&&const DeepCollectionEquality().equals(other._displayedFoods, _displayedFoods)&&(identical(other.category, category) || other.category == category)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allFoods),const DeepCollectionEquality().hash(_displayedFoods),category,searchQuery,isLoading,hasMore,page);

@override
String toString() {
  return 'ListFoodState(allFoods: $allFoods, displayedFoods: $displayedFoods, category: $category, searchQuery: $searchQuery, isLoading: $isLoading, hasMore: $hasMore, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ListFoodStateCopyWith<$Res> implements $ListFoodStateCopyWith<$Res> {
  factory _$ListFoodStateCopyWith(_ListFoodState value, $Res Function(_ListFoodState) _then) = __$ListFoodStateCopyWithImpl;
@override @useResult
$Res call({
 List<FoodEntity> allFoods, List<FoodEntity> displayedFoods, FoodCategory category, String searchQuery, bool isLoading, bool hasMore, int page
});




}
/// @nodoc
class __$ListFoodStateCopyWithImpl<$Res>
    implements _$ListFoodStateCopyWith<$Res> {
  __$ListFoodStateCopyWithImpl(this._self, this._then);

  final _ListFoodState _self;
  final $Res Function(_ListFoodState) _then;

/// Create a copy of ListFoodState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allFoods = null,Object? displayedFoods = null,Object? category = null,Object? searchQuery = null,Object? isLoading = null,Object? hasMore = null,Object? page = null,}) {
  return _then(_ListFoodState(
allFoods: null == allFoods ? _self._allFoods : allFoods // ignore: cast_nullable_to_non_nullable
as List<FoodEntity>,displayedFoods: null == displayedFoods ? _self._displayedFoods : displayedFoods // ignore: cast_nullable_to_non_nullable
as List<FoodEntity>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as FoodCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
