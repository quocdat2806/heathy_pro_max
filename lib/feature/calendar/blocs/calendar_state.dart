part of 'calendar_bloc.dart';

enum DayStatus {
  noData,     // gray  – user logged no food
  onTrack,    // green – consumed ≈ goal (goal-200 … goal+300)
  over,       // red   – consumed > goal + 300
  under,      // yellow– consumed < goal - 200
  future,     // white – day hasn't happened yet
}

class CalendarDayData {
  final DateTime date;
  final double consumedCalories;
  final DayStatus status;

  const CalendarDayData({
    required this.date,
    required this.consumedCalories,
    required this.status,
  });
}

class CalendarState {
  final bool isLoading;
  final DateTime displayedMonth;
  final double calorieGoal;
  final Map<int, CalendarDayData> dayDataMap; // key = day of month (1-31)

  const CalendarState({
    this.isLoading = false,
    required this.displayedMonth,
    this.calorieGoal = 2000,
    this.dayDataMap = const {},
  });

  CalendarState copyWith({
    bool? isLoading,
    DateTime? displayedMonth,
    double? calorieGoal,
    Map<int, CalendarDayData>? dayDataMap,
  }) {
    return CalendarState(
      isLoading: isLoading ?? this.isLoading,
      displayedMonth: displayedMonth ?? this.displayedMonth,
      calorieGoal: calorieGoal ?? this.calorieGoal,
      dayDataMap: dayDataMap ?? this.dayDataMap,
    );
  }
}
