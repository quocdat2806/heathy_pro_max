import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_state.freezed.dart';

/// Dữ liệu dinh dưỡng tổng hợp cho 1 ngày
@freezed
abstract class DailyNutrition with _$DailyNutrition {
  const DailyNutrition._();

  const factory DailyNutrition({
    required DateTime date,
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
  }) = _DailyNutrition;

  bool get hasData => calories > 0;
}

@freezed
abstract class StatsState with _$StatsState {
  const StatsState._();

  const factory StatsState({
    @Default(false) bool isLoading,
    @Default([]) List<DailyNutrition> weeklyData,
    /// null = chưa load xong từ BodyAssessmentCalculator
    double? calorieGoal,
    double? proteinGoal,
    double? carbGoal,
    double? fatGoal,
  }) = _StatsState;

  bool get hasGoals =>
      calorieGoal != null &&
      proteinGoal != null &&
      carbGoal != null &&
      fatGoal != null;

  // ── Thống kê tuần ────────────────────────────────────────────
  List<DailyNutrition> get daysWithData =>
      weeklyData.where((d) => d.hasData).toList();

  double get avgCalories {
    if (daysWithData.isEmpty) return 0;
    return daysWithData.fold(0.0, (s, d) => s + d.calories) /
        daysWithData.length;
  }

  double get avgProtein {
    if (daysWithData.isEmpty) return 0;
    return daysWithData.fold(0.0, (s, d) => s + d.protein) /
        daysWithData.length;
  }

  double get avgCarbs {
    if (daysWithData.isEmpty) return 0;
    return daysWithData.fold(0.0, (s, d) => s + d.carbs) /
        daysWithData.length;
  }

  double get avgFat {
    if (daysWithData.isEmpty) return 0;
    return daysWithData.fold(0.0, (s, d) => s + d.fat) /
        daysWithData.length;
  }

  double get calorieDeficit => avgCalories - (calorieGoal ?? avgCalories);
}
