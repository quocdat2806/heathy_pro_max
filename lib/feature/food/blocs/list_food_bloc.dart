import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:healthy_fitness_pro/core/enums/food_category.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';
import 'package:healthy_fitness_pro/shared/repositories/food_repository.dart';

import 'list_food_event.dart';
import 'list_food_state.dart';

class ListFoodBloc extends Bloc<ListFoodEvent, ListFoodState> {
  final FoodRepository _repository;
  static const int _pageSize = 20;

  ListFoodBloc(this._repository) : super(const ListFoodState()) {
    on<LoadFoods>(_onLoadFoods);
    on<FilterByCategory>(_onFilterByCategory);
    on<SearchFoods>(_onSearch, transformer: restartable());
    on<LoadMoreFoods>(_onLoadMore, transformer: droppable());
  }

  List<FoodEntity> _applyFilter(
    List<FoodEntity> all,
    FoodCategory category,
    String query,
  ) {
    var result = all;
    if (category != FoodCategory.all) {
      result = result.where((f) => f.categoryId == category.id).toList();
    }
    if (query.isNotEmpty) {
      final q = query.toLowerCase();
      result = result.where((f) => f.name.toLowerCase().contains(q)).toList();
    }
    return result;
  }

  Future<void> _onLoadFoods(
    LoadFoods event,
    Emitter<ListFoodState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final all = await _repository.getFoods();
    final filtered = _applyFilter(all, state.category, state.searchQuery);
    final displayed = filtered.take(_pageSize).toList();
    emit(
      state.copyWith(
        allFoods: all,
        displayedFoods: displayed,
        isLoading: false,
        hasMore: filtered.length > _pageSize,
        page: 0,
      ),
    );
  }

  Future<void> _onFilterByCategory(
    FilterByCategory event,
    Emitter<ListFoodState> emit,
  ) async {
    final filtered = _applyFilter(
      state.allFoods,
      event.category,
      state.searchQuery,
    );
    final displayed = filtered.take(_pageSize).toList();
    emit(
      state.copyWith(
        category: event.category,
        displayedFoods: displayed,
        hasMore: filtered.length > _pageSize,
        page: 0,
      ),
    );
  }

  Future<void> _onSearch(
    SearchFoods event,
    Emitter<ListFoodState> emit,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    final filtered = _applyFilter(
      state.allFoods,
      state.category,
      event.query,
    );
    final displayed = filtered.take(_pageSize).toList();
    emit(
      state.copyWith(
        searchQuery: event.query,
        displayedFoods: displayed,
        hasMore: filtered.length > _pageSize,
        page: 0,
      ),
    );
  }

  Future<void> _onLoadMore(
    LoadMoreFoods event,
    Emitter<ListFoodState> emit,
  ) async {
    if (!state.hasMore) return;
    final nextPage = state.page + 1;
    final filtered = _applyFilter(
      state.allFoods,
      state.category,
      state.searchQuery,
    );
    final nextCount = (nextPage + 1) * _pageSize;
    final displayed = filtered.take(nextCount).toList();
    emit(
      state.copyWith(
        page: nextPage,
        displayedFoods: displayed,
        hasMore: filtered.length > nextCount,
      ),
    );
  }
}
