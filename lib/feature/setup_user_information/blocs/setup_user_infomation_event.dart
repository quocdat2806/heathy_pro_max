import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';

part 'setup_user_infomation_event.freezed.dart';

@freezed
abstract class SetupUserInformationEvent with _$SetupUserInformationEvent {
  const factory SetupUserInformationEvent.nextStep() = NextStep;
  const factory SetupUserInformationEvent.previousStep() = PreviousStep;

  const factory SetupUserInformationEvent.setGender(Gender gender) = SetGender;
  const factory SetupUserInformationEvent.setAge(String age) = SetAge;
  const factory SetupUserInformationEvent.setHeight(String height) = SetHeight;
  const factory SetupUserInformationEvent.setWeight(String weight) = SetWeight;
  const factory SetupUserInformationEvent.setCurrentBodyFat(
    double currentBodyFat,
  ) = SetCurrentBodyFat;
  const factory SetupUserInformationEvent.setTargetBodyFat(
    double targetBodyFat,
  ) = SetTargetBodyFat;
  const factory SetupUserInformationEvent.setTargetWeight(String targetWeight) =
      SetTargetWeight;

  const factory SetupUserInformationEvent.setSetupInformationCompleted(
    bool isSetupInformationCompleted,
  ) = SetSetupInformationCompleted;
}
