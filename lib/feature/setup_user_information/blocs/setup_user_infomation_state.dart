import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/helper/index.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

part 'setup_user_infomation_state.freezed.dart';

@freezed
abstract class SetupUserInformationState with _$SetupUserInformationState {
  const SetupUserInformationState._();
  const factory SetupUserInformationState({
    @Default(SetupUserInformationStep.setupGenderAndAge)
    SetupUserInformationStep step,
    @Default(Gender.male) Gender gender,
    @Default('') String age,
    @Default('') String height,
    @Default('') String weight,
    @Default(20) double currentBodyFat,
    @Default(MovementTime.medium) MovementTime movementTime,
    @Default(DevelopmentSpeed.medium) DevelopmentSpeed developmentSpeed,
    @Default(Goal.loseWeight) Goal goal,
    @Default(15) double targetBodyFat,
    @Default('') String targetWeight,
    @Default(false) bool isSetupInformationCompleted,
  }) = _SetupUserInformationState;

  bool get isNextButtonDisabled {
    switch (step) {
      case SetupUserInformationStep.setupGenderAndAge:
        return age.trim().isEmpty;
      case SetupUserInformationStep.setUpHeightAndWeight:
        return height.trim().isEmpty || weight.trim().isEmpty;
      case SetupUserInformationStep.currentBodyFat:
        return false;
      case SetupUserInformationStep.targetBodyFat:
        return targetWeight.trim().isEmpty;
      case SetupUserInformationStep.resultInformation:
        return false;
      case SetupUserInformationStep.yourGoal:
        return false;
      case SetupUserInformationStep.movementTime:
        return false;
      case SetupUserInformationStep.developmentSpeed:
        return false;
    }
  }

  InputUserInfomation get inputUserInfomation => InputUserInfomation(
    gender: gender,
    age: int.parse(age),
    heightCm: double.parse(height),
    weightKg: double.parse(weight),
    currentBodyFatPercent: currentBodyFat,
    goal: goal,
    targetBodyFatPercent: targetBodyFat,
    targetWeightKg: double.parse(targetWeight),
    developmentSpeed: developmentSpeed,
  );

  OutputUserInfomation get outputUserInfomation =>
      BodyAssessmentCalculator.calculate(inputUserInfomation);

  String get currentBodyFatLevel {
    if (currentBodyFat < 15) {
      return 'Thấp';
    } else if (currentBodyFat < 25) {
      return 'Bình thường';
    } else if (currentBodyFat < 35) {
      return 'Hơi cao';
    } else {
      return 'Cao';
    }
  }

  String get targetBodyFatLevel {
    if (targetBodyFat < 15) {
      return 'Thấp';
    } else if (targetBodyFat < 25) {
      return 'Bình thường';
    } else if (targetBodyFat < 35) {
      return 'Hơi cao';
    } else {
      return 'Cao';
    }
  }
}
