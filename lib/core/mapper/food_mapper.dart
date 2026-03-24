import 'package:healthy_fitness_pro/core/database/index.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

extension FoodMapper on FoodTbData {
  FoodEntity toEntity() {
    return FoodEntity(
      id: id,
      name: name,
      categoryId: categoryId,
      servingUnit: servingUnit,
      weightGram: weightGram,
      nutrition: nutrition,
    );
  }
}

extension FoodEntityMapper on FoodEntity {
  FoodTbCompanion toCompanion() {
    return FoodTbCompanion.insert(
      id: id,
      name: name,
      categoryId: categoryId,
      servingUnit: servingUnit,
      weightGram: weightGram,
      nutrition: nutrition, // 🔥 object luôn vì có converter
    );
  }
}
