import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:healthy_fitness_pro/shared/entities/index.dart';
import 'package:flutter/foundation.dart';

class SeedFoodIsolate {
  SeedFoodIsolate._();
  factory SeedFoodIsolate() => _instance;
  static final SeedFoodIsolate _instance = SeedFoodIsolate._();
  Future<List<FoodEntity>> loadFoodsIsolate() async {
    final jsonStr = await rootBundle.loadString('assets/json/food.json');
    return compute(parseFoods, jsonStr);
  }

  List<FoodEntity> parseFoods(String jsonStr) {
    final jsonMap = jsonDecode(jsonStr);
    final list = jsonMap['food_database'] as List;

    return list.map((e) {
      return FoodEntity(
        id: e['id'],
        name: e['name'],
        categoryId: e['category_id'],
        servingUnit: e['serving_unit'],
        weightGram: e['weight_gram'],
        nutrition: Nutrition.fromJson(e['nutrition']),
      );
    }).toList();
  }
}
