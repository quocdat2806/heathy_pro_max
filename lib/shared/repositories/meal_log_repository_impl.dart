import 'package:drift/drift.dart';
import 'package:healthy_fitness_pro/core/database/index.dart';
import 'package:healthy_fitness_pro/core/mapper/index.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';

import 'meal_log_repository.dart';

class MealLogRepositoryImpl implements MealLogRepository {
  final LocalDatabase db;
  MealLogRepositoryImpl(this.db);

  @override
  Future<void> insertMealLog(MealLogEntity log) async {
    await db.into(db.mealLogTb).insert(log.toCompanion());
  }

  @override
  Future<List<MealLogEntity>> getMealLogsByDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    final rows = await (db.select(db.mealLogTb)
          ..where(
            (t) =>
                t.logDate.isBiggerOrEqualValue(startOfDay) &
                t.logDate.isSmallerThanValue(endOfDay),
          ))
        .get();
    return rows.map((r) => r.toEntity()).toList();
  }

  @override
  Future<List<MealLogEntity>> getMealLogsByDateAndType(
    DateTime date,
    int mealTypeId,
  ) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    final rows = await (db.select(db.mealLogTb)
          ..where(
            (t) =>
                t.logDate.isBiggerOrEqualValue(startOfDay) &
                t.logDate.isSmallerThanValue(endOfDay) &
                t.mealTypeId.equals(mealTypeId),
          ))
        .get();
    return rows.map((r) => r.toEntity()).toList();
  }

  @override
  Future<List<MealLogEntity>> getMealLogsByMonth(int year, int month) async {
    final startOfMonth = DateTime(year, month, 1);
    final endOfMonth = DateTime(year, month + 1, 1);
    final rows = await (db.select(db.mealLogTb)
          ..where(
            (t) =>
                t.logDate.isBiggerOrEqualValue(startOfMonth) &
                t.logDate.isSmallerThanValue(endOfMonth),
          ))
        .get();
    return rows.map((r) => r.toEntity()).toList();
  }
}
