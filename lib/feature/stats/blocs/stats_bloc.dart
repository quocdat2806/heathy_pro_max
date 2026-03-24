import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/core/helper/body_assessment_calculator.dart';
import 'package:healthy_fitness_pro/shared/repositories/meal_log_repository.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';

import 'stats_event.dart';
import 'stats_state.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final MealLogRepository _mealLogRepository;
  final UserPreferencesRepository _prefsRepository;

  StatsBloc(this._mealLogRepository, this._prefsRepository)
      : super(const StatsState()) {
    on<LoadWeeklyStats>(_onLoadWeeklyStats);
  }

  Future<void> _onLoadWeeklyStats(
    LoadWeeklyStats event,
    Emitter<StatsState> emit,  ) async {
    emit(state.copyWith(isLoading: true));

    final today = DateTime.now();

    // Load 7 ngày và user info song song
    final (dayLogs, input) = await (
      Future.wait(
        List.generate(
          7,
          (i) => _mealLogRepository.getMealLogsByDate(
            today.subtract(Duration(days: 6 - i)), // index 0 = 6 ngày trước
          ),
        ),
      ),
      _prefsRepository.loadInputUserInfo(),
    ).wait;

    final weeklyData = List.generate(7, (i) {
      final date = today.subtract(Duration(days: 6 - i));
      final logs = dayLogs[i];
      return DailyNutrition(
        date: date,
        calories: logs.fold(0.0, (s, l) => s + l.totalCalories),
        protein: logs.fold(0.0, (s, l) => s + l.totalProtein),
        carbs: logs.fold(0.0, (s, l) => s + l.totalCarbs),
        fat: logs.fold(0.0, (s, l) => s + l.totalFat),
      );
    });

    // Goals chỉ được set khi có dữ liệu thực từ BodyAssessmentCalculator
    double? calorieGoal;
    double? proteinGoal;
    double? carbGoal;
    double? fatGoal;

    if (input != null) {
      final output = BodyAssessmentCalculator.calculate(input);
      calorieGoal = output.dailyCaloriesRecommended;
      proteinGoal = output.dailyProteinG;
      carbGoal = output.dailyCarbG;
      fatGoal = output.dailyFatG;
    }

    emit(
      state.copyWith(
        isLoading: false,
        weeklyData: weeklyData,
        calorieGoal: calorieGoal,
        proteinGoal: proteinGoal,
        carbGoal: carbGoal,
        fatGoal: fatGoal,
      ),
    );
  }
}

