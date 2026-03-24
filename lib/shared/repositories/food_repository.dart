import 'package:healthy_fitness_pro/shared/entities/index.dart';

abstract class FoodRepository {
  Future<List<FoodEntity>> getFoods();
  Future<void> insertFoods(List<FoodEntity> foods);
  Future<List<FoodEntity>> getFoodsFirst();
  Future<void> insertFoodsFirst(List<FoodEntity> foods);
  Future<void> seedFoodsIfNeeded();
}
