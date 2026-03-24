import 'package:drift/drift.dart';
import 'package:healthy_fitness_pro/core/database/index.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';

extension MealLogDataMapper on MealLogTbData {
  MealLogEntity toEntity() {
    return MealLogEntity(
      id: id,
      foodId: foodId,
      foodName: foodName,
      mealTypeId: mealTypeId,
      quantity: quantity,
      totalCalories: totalCalories,
      totalProtein: totalProtein,
      totalCarbs: totalCarbs,
      totalFat: totalFat,
      weightGram: weightGram,
      servingUnit: servingUnit,
      logDate: logDate,
      createdAt: createdAt,
    );
  }
}

extension MealLogEntityMapper on MealLogEntity {
  MealLogTbCompanion toCompanion() {
    return MealLogTbCompanion.insert(
      id: id,
      foodId: foodId,
      foodName: foodName,
      mealTypeId: mealTypeId,
      quantity: quantity,
      totalCalories: totalCalories,
      totalProtein: totalProtein,
      totalCarbs: totalCarbs,
      totalFat: totalFat,
      weightGram: weightGram,
      servingUnit: servingUnit,
      logDate: logDate,
      createdAt: Value(createdAt),
    );
  }
}
