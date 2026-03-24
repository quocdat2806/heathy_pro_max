import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/core/helper/body_assessment_calculator.dart';
import 'package:healthy_fitness_pro/shared/repositories/meal_log_repository.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final MealLogRepository _mealLogRepository;
  final UserPreferencesRepository _prefsRepository;

  CalendarBloc(this._mealLogRepository, this._prefsRepository)
      : super(CalendarState(displayedMonth: DateTime.now())) {
    on<LoadCalendarMonth>(_onLoadCalendarMonth);
  }

  Future<void> _onLoadCalendarMonth(
    LoadCalendarMonth event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, displayedMonth: event.month));

    final month = event.month;
    final (logs, inputUser) = await (
      _mealLogRepository.getMealLogsByMonth(month.year, month.month),
      _prefsRepository.loadInputUserInfo(),
    ).wait;

    double calorieGoal = state.calorieGoal;
    if (inputUser != null) {
      final output = BodyAssessmentCalculator.calculate(inputUser);
      calorieGoal = output.dailyCaloriesRecommended;
    }

    // Group calories consumed per day
    final Map<int, double> caloriesPerDay = {};
    for (final log in logs) {
      final day = log.logDate.day;
      caloriesPerDay[day] = (caloriesPerDay[day] ?? 0) + log.totalCalories;
    }

    final now = DateTime.now();
    final daysInMonth = DateTime(month.year, month.month + 1, 0).day;

    final Map<int, CalendarDayData> dayDataMap = {};
    for (int day = 1; day <= daysInMonth; day++) {
      final date = DateTime(month.year, month.month, day);

      // Future day (after today)
      final isToday = date.year == now.year &&
          date.month == now.month &&
          date.day == now.day;
      final isFuture = date.isAfter(now) && !isToday;

      if (isFuture) {
        dayDataMap[day] = CalendarDayData(
          date: date,
          consumedCalories: 0,
          status: DayStatus.future,
        );
        continue;
      }

      final consumed = caloriesPerDay[day] ?? 0;

      final DayStatus status;
      if (consumed == 0) {
        status = DayStatus.noData;
      } else if (consumed > calorieGoal + 300) {
        status = DayStatus.over;
      } else if (consumed < calorieGoal - 200) {
        status = DayStatus.under;
      } else {
        status = DayStatus.onTrack;
      }

      dayDataMap[day] = CalendarDayData(
        date: date,
        consumedCalories: consumed,
        status: status,
      );
    }

    emit(
      state.copyWith(
        isLoading: false,
        displayedMonth: month,
        calorieGoal: calorieGoal,
        dayDataMap: dayDataMap,
      ),
    );
  }
}
