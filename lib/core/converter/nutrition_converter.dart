import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

class NutritionConverter extends TypeConverter<Nutrition, String> {
  const NutritionConverter();

  @override
  Nutrition fromSql(String fromDb) {
    return Nutrition.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(Nutrition value) {
    return jsonEncode(value.toJson());
  }
}
