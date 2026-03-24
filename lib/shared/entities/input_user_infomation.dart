import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_user_infomation.freezed.dart';

part 'input_user_infomation.g.dart';

@freezed
abstract class InputUserInfomation with _$InputUserInfomation {
  const factory InputUserInfomation({
    required Gender gender,
    required int age,
    required double heightCm,
    required double weightKg,
    required double currentBodyFatPercent,
    required Goal goal,
    required double targetBodyFatPercent,
    required double targetWeightKg,
    required DevelopmentSpeed developmentSpeed,
  }) = _InputUserInfomation;
  factory InputUserInfomation.fromJson(Map<String, dynamic> json) =>
      _$InputUserInfomationFromJson(json);
}
