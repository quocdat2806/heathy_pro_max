import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'setup_user_infomation_event.dart';
import 'setup_user_infomation_state.dart';

class SetupUserInformationBloc
    extends Bloc<SetupUserInformationEvent, SetupUserInformationState> {
  SetupUserInformationBloc() : super(const SetupUserInformationState()) {
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

  void _onSetSetupInformationCompleted(
    SetSetupInformationCompleted event,
    Emitter<SetupUserInformationState> emit,
  ) {
    emit(
      state.copyWith(
        isSetupInformationCompleted: event.isSetupInformationCompleted,
      ),
    );
  }

  void _onNextStep(NextStep event, Emitter<SetupUserInformationState> emit) {
    final currentIndex = state.step.index;
    final lastIndex = SetupUserInformationStep.values.length - 1;

    if (currentIndex >= lastIndex) {
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
}
