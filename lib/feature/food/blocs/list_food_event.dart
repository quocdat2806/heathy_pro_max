import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/food_category.dart';

part 'list_food_event.freezed.dart';

@freezed
abstract class ListFoodEvent with _$ListFoodEvent {
  const factory ListFoodEvent.loadFoods() = LoadFoods;
  const factory ListFoodEvent.filterByCategory(FoodCategory category) =
      FilterByCategory;
  const factory ListFoodEvent.search(String query) = SearchFoods;
  const factory ListFoodEvent.loadMore() = LoadMoreFoods;
}
