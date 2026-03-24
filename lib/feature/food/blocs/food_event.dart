import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/meal_type.dart';
import 'package:healthy_fitness_pro/shared/entities/food_entity.dart';

part 'food_event.freezed.dart';

@freezed
abstract class FoodEvent with _$FoodEvent {
  const factory FoodEvent.selectMealType(MealType mealType) = SelectMealType;
  const factory FoodEvent.addToMeal({
    required FoodEntity food,
    required int quantity,
    required MealType mealType,
  }) = AddToMeal;
}
