import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';
import 'setup_user_infomation_event.dart';
import 'setup_user_infomation_state.dart';

class SetupUserInformationBloc
    extends Bloc<SetupUserInformationEvent, SetupUserInformationState> {
  final UserPreferencesRepository _prefsRepository;

  SetupUserInformationBloc(this._prefsRepository)
      : super(const SetupUserInformationState()) {
    on<NextStep>(_onNextStep);
    on<PreviousStep>(_onPreviousStep);
    on<SetGender>(_onSetGender);
    on<SetAge>(_onSetAge);
    on<SetHeight>(_onSetHeight);
    on<SetWeight>(_onSetWeight);
    on<SetCurrentBodyFat>(_onSetCurrentBodyFat);
    on<SetTargetBodyFat>(_onSetTargetBodyFat);
    on<SetTargetWeight>(_onSetTargetWeight);
    on<SetSetupInformationCompleted>(_onSetSetupInformationCompleted);
    on<SetMovementTime>(_onSetMovementTime);
    on<SetGoal>(_onSetGoal);
    on<SetDevelopmentSpeed>(_onSetDevelopmentSpeed);
    on<LoadExistingData>(_onLoadExistingData);
  }
  void _onPreviousStep(
    PreviousStep event,
    Emitter<SetupUserInformationState> emit,
  ) {
    final currentIndex = state.step.index;
    final previousIndex = (currentIndex - 1).clamp(
      0,
      SetupUserInformationStep.values.length - 1,
    );
    emit(state.copyWith(step: SetupUserInformationStep.values[previousIndex]));
  }

  Future<void> _onSetSetupInformationCompleted(
    SetSetupInformationCompleted event,
    Emitter<SetupUserInformationState> emit,
  ) async {
    if (event.isSetupInformationCompleted) {
      await _prefsRepository.saveInputUserInfo(state.inputUserInfomation);
    }
    emit(
      state.copyWith(
        isSetupInformationCompleted: event.isSetupInformationCompleted,
      ),
    );
  }

  void _onSetGoal(SetGoal event, Emitter<SetupUserInformationState> emit) {
    emit(state.copyWith(goal: event.goal));
  }

  void _onSetDevelopmentSpeed(
    SetDevelopmentSpeed event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(state.copyWith(developmentSpeed: event.developmentSpeed));
  }

  void _onSetMovementTime(
    SetMovementTime event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(state.copyWith(movementTime: event.movementTime));
  }

  Future<void> _onNextStep(
    NextStep event,
    Emitter<SetupUserInformationState> emit,
  ) async {
    final currentIndex = state.step.index;
    final lastIndex = SetupUserInformationStep.values.length - 1;

    if (currentIndex >= lastIndex) {
      // Save trước, sau đó mới emit completed để navigate
      await _prefsRepository.saveInputUserInfo(state.inputUserInfomation);
      emit(state.copyWith(isSetupInformationCompleted: true));
      return;
    }

    final nextIndex = (currentIndex + 1).clamp(0, lastIndex);
    emit(state.copyWith(step: SetupUserInformationStep.values[nextIndex]));
  }

  void _onSetGender(SetGender event, Emitter<SetupUserInformationState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  void _onSetAge(SetAge event, Emitter<SetupUserInformationState> emit) {
    emit(state.copyWith(age: event.age));
  }

  void _onSetHeight(SetHeight event, Emitter<SetupUserInformationState> emit) {
    emit(state.copyWith(height: event.height));
  }

  void _onSetWeight(SetWeight event, Emitter<SetupUserInformationState> emit) {
    emit(state.copyWith(weight: event.weight));
  }

  void _onSetCurrentBodyFat(
    SetCurrentBodyFat event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(state.copyWith(currentBodyFat: event.currentBodyFat));
  }

  void _onSetTargetBodyFat(
    SetTargetBodyFat event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(state.copyWith(targetBodyFat: event.targetBodyFat));
  }

  void _onSetTargetWeight(
    SetTargetWeight event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(state.copyWith(targetWeight: event.targetWeight));
  }

  void _onLoadExistingData(
    LoadExistingData event,
    Emitter<SetupUserInformationState> emit,
  ) {
    final i = event.input;
    emit(
      state.copyWith(
        gender: i.gender,
        age: i.age.toString(),
        height: i.heightCm.toStringAsFixed(0),
        weight: i.weightKg.toStringAsFixed(1),
        currentBodyFat: i.currentBodyFatPercent,
        goal: i.goal,
        targetBodyFat: i.targetBodyFatPercent,
        targetWeight: i.targetWeightKg.toStringAsFixed(1),
        developmentSpeed: i.developmentSpeed,
      ),
    );
  }
}
