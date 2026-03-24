import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<MealLogEntity> todayLogs,
    @Default(2000) double calorieGoal,
    @Default(150) double proteinGoal,
    @Default(250) double carbGoal,
    @Default(65) double fatGoal,
  }) = _HomeState;

  double get consumedCalories =>
      todayLogs.fold(0, (s, l) => s + l.totalCalories);
  double get consumedProtein =>
      todayLogs.fold(0, (s, l) => s + l.totalProtein);
  double get consumedCarbs => todayLogs.fold(0, (s, l) => s + l.totalCarbs);
  double get consumedFat => todayLogs.fold(0, (s, l) => s + l.totalFat);

  double get remainingCalories =>
      (calorieGoal - consumedCalories).clamp(0, double.infinity);
  double get calorieProgress =>
      calorieGoal > 0 ? (consumedCalories / calorieGoal).clamp(0.0, 1.0) : 0.0;
}
