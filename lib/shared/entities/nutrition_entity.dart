import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_entity.freezed.dart';
part 'nutrition_entity.g.dart';

@freezed
abstract class Nutrition with _$Nutrition {
  const factory Nutrition({
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
  }) = _Nutrition;
  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}
