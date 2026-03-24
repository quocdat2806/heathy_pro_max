import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/meal_type.dart';

part 'food_state.freezed.dart';

@freezed
abstract class FoodState with _$FoodState {
  const factory FoodState({
    @Default(false) bool isLoading,
    @Default(false) bool isSaved,
    @Default(MealType.breakfast) MealType selectedMealType,
    String? error,
  }) = _FoodState;
}
