import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';
import 'package:healthy_fitness_pro/shared/repositories/meal_log_repository.dart';

import 'food_event.dart';
import 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final MealLogRepository _repository;

  FoodBloc(this._repository) : super(const FoodState()) {
    on<SelectMealType>(_onSelectMealType);
    on<AddToMeal>(_onAddToMeal);
  }

  void _onSelectMealType(SelectMealType event, Emitter<FoodState> emit) {
    emit(state.copyWith(selectedMealType: event.mealType, isSaved: false));
  }

  Future<void> _onAddToMeal(AddToMeal event, Emitter<FoodState> emit) async {
    emit(state.copyWith(isLoading: true, error: null, isSaved: false));
    try {
      final now = DateTime.now();
      final id =
          '${now.millisecondsSinceEpoch}_${Random().nextInt(99999)}';
      final log = MealLogEntity(
        id: id,
        foodId: event.food.id,
        foodName: event.food.name,
        mealTypeId: event.mealType.id,
        quantity: event.quantity,
        totalCalories: event.food.nutrition.calories * event.quantity,
        totalProtein: event.food.nutrition.protein * event.quantity,
        totalCarbs: event.food.nutrition.carbs * event.quantity,
        totalFat: event.food.nutrition.fat * event.quantity,
        weightGram: event.food.weightGram * event.quantity,
        servingUnit: event.food.servingUnit,
        logDate: DateTime(now.year, now.month, now.day),
        createdAt: now,
      );
      await _repository.insertMealLog(log);
      emit(state.copyWith(isLoading: false, isSaved: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Lưu thất bại: $e'));
    }
  }
}
