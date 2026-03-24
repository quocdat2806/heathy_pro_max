import 'package:freezed_annotation/freezed_annotation.dart';
import 'nutrition_entity.dart';

part 'food_entity.freezed.dart';
part 'food_entity.g.dart';

@freezed
abstract class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    required String id,
    required String name,
    required int categoryId,
    required String servingUnit,
    required int weightGram,
    required Nutrition nutrition,
  }) = _FoodEntity;

  factory FoodEntity.fromJson(Map<String, dynamic> json) =>
      _$FoodEntityFromJson(json);
}
