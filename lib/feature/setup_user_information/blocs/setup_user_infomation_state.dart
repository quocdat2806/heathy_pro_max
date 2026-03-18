import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    }
  }

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
}
