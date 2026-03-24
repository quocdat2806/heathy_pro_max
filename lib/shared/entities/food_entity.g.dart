// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodEntity _$FoodEntityFromJson(Map<String, dynamic> json) => _FoodEntity(
  id: json['id'] as String,
  name: json['name'] as String,
  categoryId: (json['categoryId'] as num).toInt(),
  servingUnit: json['servingUnit'] as String,
  weightGram: (json['weightGram'] as num).toInt(),
  nutrition: Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FoodEntityToJson(_FoodEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'servingUnit': instance.servingUnit,
      'weightGram': instance.weightGram,
      'nutrition': instance.nutrition,
    };
