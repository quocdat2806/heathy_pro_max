// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_user_infomation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputUserInfomation _$InputUserInfomationFromJson(Map<String, dynamic> json) =>
    _InputUserInfomation(
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      age: (json['age'] as num).toInt(),
      heightCm: (json['heightCm'] as num).toDouble(),
      weightKg: (json['weightKg'] as num).toDouble(),
      currentBodyFatPercent: (json['currentBodyFatPercent'] as num).toDouble(),
      goal: $enumDecode(_$GoalEnumMap, json['goal']),
      targetBodyFatPercent: (json['targetBodyFatPercent'] as num).toDouble(),
      targetWeightKg: (json['targetWeightKg'] as num).toDouble(),
      developmentSpeed: $enumDecode(
        _$DevelopmentSpeedEnumMap,
        json['developmentSpeed'],
      ),
    );

Map<String, dynamic> _$InputUserInfomationToJson(
  _InputUserInfomation instance,
) => <String, dynamic>{
  'gender': _$GenderEnumMap[instance.gender]!,
  'age': instance.age,
  'heightCm': instance.heightCm,
  'weightKg': instance.weightKg,
  'currentBodyFatPercent': instance.currentBodyFatPercent,
  'goal': _$GoalEnumMap[instance.goal]!,
  'targetBodyFatPercent': instance.targetBodyFatPercent,
  'targetWeightKg': instance.targetWeightKg,
  'developmentSpeed': _$DevelopmentSpeedEnumMap[instance.developmentSpeed]!,
};

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};

const _$GoalEnumMap = {
  Goal.loseWeight: 'loseWeight',
  Goal.gainWeight: 'gainWeight',
  Goal.maintainWeight: 'maintainWeight',
};

const _$DevelopmentSpeedEnumMap = {
  DevelopmentSpeed.low: 'low',
  DevelopmentSpeed.medium: 'medium',
  DevelopmentSpeed.high: 'high',
};
