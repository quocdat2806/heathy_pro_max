import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';

abstract class MealLogRepository {
  Future<void> insertMealLog(MealLogEntity log);
  Future<List<MealLogEntity>> getMealLogsByDate(DateTime date);
  Future<List<MealLogEntity>> getMealLogsByDateAndType(
    DateTime date,
    int mealTypeId,
  );
  Future<List<MealLogEntity>> getMealLogsByMonth(int year, int month);
}
