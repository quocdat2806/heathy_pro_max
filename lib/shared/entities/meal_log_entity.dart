import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_log_entity.freezed.dart';

@freezed
abstract class MealLogEntity with _$MealLogEntity {
  const factory MealLogEntity({
    required String id,
    required String foodId,
    required String foodName,
    required int mealTypeId,
    required int quantity,
    required double totalCalories,
    required double totalProtein,
    required double totalCarbs,
    required double totalFat,
    required int weightGram,
    required String servingUnit,
    required DateTime logDate,
    required DateTime createdAt,
  }) = _MealLogEntity;
}
