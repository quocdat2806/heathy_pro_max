import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/core/helper/body_assessment_calculator.dart';
import 'package:healthy_fitness_pro/shared/entities/input_user_infomation.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';
import 'package:healthy_fitness_pro/shared/repositories/meal_log_repository.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MealLogRepository _mealLogRepository;
  final UserPreferencesRepository _prefsRepository;

  HomeBloc(this._mealLogRepository, this._prefsRepository)
      : super(const HomeState()) {
    on<LoadTodayLogs>(_onLoadTodayLogs);
  }

  Future<void> _onLoadTodayLogs(
    LoadTodayLogs event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final List<MealLogEntity> logs;
    final InputUserInfomation? input;

    (logs, input) = await (
      _mealLogRepository.getMealLogsByDate(DateTime.now()),
      _prefsRepository.loadInputUserInfo(),
    ).wait;

    if (input != null) {
      final output = BodyAssessmentCalculator.calculate(input);
      emit(
        state.copyWith(
          isLoading: false,
          todayLogs: logs,
          calorieGoal: output.dailyCaloriesRecommended,
          proteinGoal: output.dailyProteinG,
          carbGoal: output.dailyCarbG,
          fatGoal: output.dailyFatG,
        ),
      );
    } else {
      emit(state.copyWith(isLoading: false, todayLogs: logs));
    }
  }
}
