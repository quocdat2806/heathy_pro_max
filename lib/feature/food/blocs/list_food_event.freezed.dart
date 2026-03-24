// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_food_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListFoodEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListFoodEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListFoodEvent()';
}


}

/// @nodoc
class $ListFoodEventCopyWith<$Res>  {
$ListFoodEventCopyWith(ListFoodEvent _, $Res Function(ListFoodEvent) __);
}


/// Adds pattern-matching-related methods to [ListFoodEvent].
extension ListFoodEventPatterns on ListFoodEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadFoods value)?  loadFoods,TResult Function( FilterByCategory value)?  filterByCategory,TResult Function( SearchFoods value)?  search,TResult Function( LoadMoreFoods value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadFoods() when loadFoods != null:
return loadFoods(_that);case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that);case SearchFoods() when search != null:
return search(_that);case LoadMoreFoods() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadFoods value)  loadFoods,required TResult Function( FilterByCategory value)  filterByCategory,required TResult Function( SearchFoods value)  search,required TResult Function( LoadMoreFoods value)  loadMore,}){
final _that = this;
switch (_that) {
case LoadFoods():
return loadFoods(_that);case FilterByCategory():
return filterByCategory(_that);case SearchFoods():
return search(_that);case LoadMoreFoods():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadFoods value)?  loadFoods,TResult? Function( FilterByCategory value)?  filterByCategory,TResult? Function( SearchFoods value)?  search,TResult? Function( LoadMoreFoods value)?  loadMore,}){
final _that = this;
switch (_that) {
case LoadFoods() when loadFoods != null:
return loadFoods(_that);case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that);case SearchFoods() when search != null:
return search(_that);case LoadMoreFoods() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadFoods,TResult Function( FoodCategory category)?  filterByCategory,TResult Function( String query)?  search,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadFoods() when loadFoods != null:
return loadFoods();case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that.category);case SearchFoods() when search != null:
return search(_that.query);case LoadMoreFoods() when loadMore != null:
return loadMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadFoods,required TResult Function( FoodCategory category)  filterByCategory,required TResult Function( String query)  search,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case LoadFoods():
return loadFoods();case FilterByCategory():
return filterByCategory(_that.category);case SearchFoods():
return search(_that.query);case LoadMoreFoods():
return loadMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadFoods,TResult? Function( FoodCategory category)?  filterByCategory,TResult? Function( String query)?  search,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case LoadFoods() when loadFoods != null:
return loadFoods();case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that.category);case SearchFoods() when search != null:
return search(_that.query);case LoadMoreFoods() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class LoadFoods implements ListFoodEvent {
  const LoadFoods();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFoods);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListFoodEvent.loadFoods()';
}


}




/// @nodoc


class FilterByCategory implements ListFoodEvent {
  const FilterByCategory(this.category);
  

 final  FoodCategory category;

/// Create a copy of ListFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterByCategoryCopyWith<FilterByCategory> get copyWith => _$FilterByCategoryCopyWithImpl<FilterByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterByCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ListFoodEvent.filterByCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $FilterByCategoryCopyWith<$Res> implements $ListFoodEventCopyWith<$Res> {
  factory $FilterByCategoryCopyWith(FilterByCategory value, $Res Function(FilterByCategory) _then) = _$FilterByCategoryCopyWithImpl;
@useResult
$Res call({
 FoodCategory category
});




}
/// @nodoc
class _$FilterByCategoryCopyWithImpl<$Res>
    implements $FilterByCategoryCopyWith<$Res> {
  _$FilterByCategoryCopyWithImpl(this._self, this._then);

  final FilterByCategory _self;
  final $Res Function(FilterByCategory) _then;

/// Create a copy of ListFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(FilterByCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as FoodCategory,
  ));
}


}

/// @nodoc


class SearchFoods implements ListFoodEvent {
  const SearchFoods(this.query);
  

 final  String query;

/// Create a copy of ListFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFoodsCopyWith<SearchFoods> get copyWith => _$SearchFoodsCopyWithImpl<SearchFoods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFoods&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ListFoodEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchFoodsCopyWith<$Res> implements $ListFoodEventCopyWith<$Res> {
  factory $SearchFoodsCopyWith(SearchFoods value, $Res Function(SearchFoods) _then) = _$SearchFoodsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchFoodsCopyWithImpl<$Res>
    implements $SearchFoodsCopyWith<$Res> {
  _$SearchFoodsCopyWithImpl(this._self, this._then);

  final SearchFoods _self;
  final $Res Function(SearchFoods) _then;

/// Create a copy of ListFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchFoods(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadMoreFoods implements ListFoodEvent {
  const LoadMoreFoods();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreFoods);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListFoodEvent.loadMore()';
}


}




// dart format on
