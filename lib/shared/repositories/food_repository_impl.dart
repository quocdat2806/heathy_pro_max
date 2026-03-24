import 'package:drift/drift.dart';
import 'package:healthy_fitness_pro/core/database/index.dart';
import 'package:healthy_fitness_pro/core/isolate/index.dart';
import 'package:healthy_fitness_pro/core/mapper/index.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

import 'food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final LocalDatabase db;
  final SeedFoodIsolate seedFoodIsolate;
  FoodRepositoryImpl(this.db, this.seedFoodIsolate);

  @override
  Future<List<FoodEntity>> getFoods() async {
    final data = await db.select(db.foodTb).get();
    return data.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> insertFoods(List<FoodEntity> foods) async {
    await db.batch((b) {
      b.insertAll(
        db.foodTb,
        foods.map((e) => e.toCompanion()).toList(),
        mode: InsertMode.insertOrIgnore,
      );
    });
  }

  @override
  Future<List<FoodEntity>> getFoodsFirst() {
    throw UnimplementedError();
  }

  @override
  Future<void> insertFoodsFirst(List<FoodEntity> foods) {
    throw UnimplementedError();
  }

  @override
  Future<void> seedFoodsIfNeeded() async {
    final existing = await db.select(db.foodTb).get();

    if (existing.isNotEmpty) return;

    final foods = await seedFoodIsolate.loadFoodsIsolate();
    await insertFoods(foods);
  }
}
