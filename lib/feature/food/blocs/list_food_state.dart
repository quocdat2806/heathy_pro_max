import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/food_category.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

part 'list_food_state.freezed.dart';

@freezed
abstract class ListFoodState with _$ListFoodState {
  const factory ListFoodState({
    @Default([]) List<FoodEntity> allFoods,
    @Default([]) List<FoodEntity> displayedFoods,
    @Default(FoodCategory.all) FoodCategory category,
    @Default('') String searchQuery,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore,
    @Default(0) int page,
  }) = _ListFoodState;
}
