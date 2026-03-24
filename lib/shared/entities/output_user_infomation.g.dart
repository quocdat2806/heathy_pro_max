// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_user_infomation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OutputUserInfomation _$OutputUserInfomationFromJson(
  Map<String, dynamic> json,
) => _OutputUserInfomation(
  bmi: (json['bmi'] as num).toDouble(),
  bmiCategory: json['bmiCategory'] as String,
  bmiPrime: (json['bmiPrime'] as num).toDouble(),
  fatMassKg: (json['fatMassKg'] as num).toDouble(),
  leanMassKg: (json['leanMassKg'] as num).toDouble(),
  muscleMassKg: (json['muscleMassKg'] as num).toDouble(),
  boneMassKg: (json['boneMassKg'] as num).toDouble(),
  waterMassKg: (json['waterMassKg'] as num).toDouble(),
  currentBodyFatPercent: (json['currentBodyFatPercent'] as num).toDouble(),
  bmr: (json['bmr'] as num).toDouble(),
  tdee: (json['tdee'] as num).toDouble(),
  tdeeModerate: (json['tdeeModerate'] as num).toDouble(),
  targetFatMassKg: (json['targetFatMassKg'] as num).toDouble(),
  targetLeanMassKg: (json['targetLeanMassKg'] as num).toDouble(),
  fatToLoseKg: (json['fatToLoseKg'] as num).toDouble(),
  weightChangeKg: (json['weightChangeKg'] as num).toDouble(),
  targetWeightKg: (json['targetWeightKg'] as num).toDouble(),
  targetBodyFatPercent: (json['targetBodyFatPercent'] as num).toDouble(),
  estimatedWeeksToGoal: (json['estimatedWeeksToGoal'] as num).toInt(),
  weeklyCalorieAdjustment: (json['weeklyCalorieAdjustment'] as num).toDouble(),
  dailyCalorieAdjustment: (json['dailyCalorieAdjustment'] as num).toDouble(),
  dailyCaloriesRecommended: (json['dailyCaloriesRecommended'] as num)
      .toDouble(),
  dailyProteinG: (json['dailyProteinG'] as num).toDouble(),
  dailyCarbG: (json['dailyCarbG'] as num).toDouble(),
  dailyFatG: (json['dailyFatG'] as num).toDouble(),
  bodyFatCategory: json['bodyFatCategory'] as String,
  overallConclusion: json['overallConclusion'] as String,
  advices: (json['advices'] as List<dynamic>).map((e) => e as String).toList(),
  warnings: (json['warnings'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  dietPlan: json['dietPlan'] as String,
  trainingPlan: json['trainingPlan'] as String,
  ffmi: (json['ffmi'] as num).toDouble(),
  ffmiCategory: json['ffmiCategory'] as String,
);

Map<String, dynamic> _$OutputUserInfomationToJson(
  _OutputUserInfomation instance,
) => <String, dynamic>{
  'bmi': instance.bmi,
  'bmiCategory': instance.bmiCategory,
  'bmiPrime': instance.bmiPrime,
  'fatMassKg': instance.fatMassKg,
  'leanMassKg': instance.leanMassKg,
  'muscleMassKg': instance.muscleMassKg,
  'boneMassKg': instance.boneMassKg,
  'waterMassKg': instance.waterMassKg,
  'currentBodyFatPercent': instance.currentBodyFatPercent,
  'bmr': instance.bmr,
  'tdee': instance.tdee,
  'tdeeModerate': instance.tdeeModerate,
  'targetFatMassKg': instance.targetFatMassKg,
  'targetLeanMassKg': instance.targetLeanMassKg,
  'fatToLoseKg': instance.fatToLoseKg,
  'weightChangeKg': instance.weightChangeKg,
  'targetWeightKg': instance.targetWeightKg,
  'targetBodyFatPercent': instance.targetBodyFatPercent,
  'estimatedWeeksToGoal': instance.estimatedWeeksToGoal,
  'weeklyCalorieAdjustment': instance.weeklyCalorieAdjustment,
  'dailyCalorieAdjustment': instance.dailyCalorieAdjustment,
  'dailyCaloriesRecommended': instance.dailyCaloriesRecommended,
  'dailyProteinG': instance.dailyProteinG,
  'dailyCarbG': instance.dailyCarbG,
  'dailyFatG': instance.dailyFatG,
  'bodyFatCategory': instance.bodyFatCategory,
  'overallConclusion': instance.overallConclusion,
  'advices': instance.advices,
  'warnings': instance.warnings,
  'dietPlan': instance.dietPlan,
  'trainingPlan': instance.trainingPlan,
  'ffmi': instance.ffmi,
  'ffmiCategory': instance.ffmiCategory,
};
