import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/shared/entities/input_user_infomation.dart';

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

  const factory SetupUserInformationEvent.setMovementTime(
    MovementTime movementTime,
  ) = SetMovementTime;
  const factory SetupUserInformationEvent.setGoal(Goal goal) = SetGoal;
  const factory SetupUserInformationEvent.setDevelopmentSpeed(
    DevelopmentSpeed developmentSpeed,
  ) = SetDevelopmentSpeed;
  const factory SetupUserInformationEvent.setTargetBodyFat(
    double targetBodyFat,
  ) = SetTargetBodyFat;
  const factory SetupUserInformationEvent.setTargetWeight(String targetWeight) =
      SetTargetWeight;

  const factory SetupUserInformationEvent.setSetupInformationCompleted(
    bool isSetupInformationCompleted,
  ) = SetSetupInformationCompleted;
}

/// Event thủ công (không dùng freezed) để pre-fill data khi cập nhật thông số
class LoadExistingData implements SetupUserInformationEvent {
  const LoadExistingData(this.input);
  final InputUserInfomation input;
}
