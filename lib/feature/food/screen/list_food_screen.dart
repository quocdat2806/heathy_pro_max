import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/food_category.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/core/navigation/app_navigation.dart';
import 'package:healthy_fitness_pro/core/navigation/router_path.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/list_food_bloc.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/list_food_event.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/list_food_state.dart';
import 'package:healthy_fitness_pro/shared/entities/food_entity.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class ListFoodScreen extends StatefulWidget {
  const ListFoodScreen({super.key});

  @override
  State<ListFoodScreen> createState() => _ListFoodScreenState();
}

class _ListFoodScreenState extends State<ListFoodScreen> {
  late final ScrollController _scrollController;
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _searchController = TextEditingController();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll > 0 && currentScroll >= maxScroll * 0.7) {
      context.read<ListFoodBloc>().add(LoadMoreFoods());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  String _categoryEmoji(int categoryId) {
    switch (FoodCategory.fromId(categoryId)) {
      case FoodCategory.liquid:
        return '🥤';
      case FoodCategory.fruit:
        return '🍎';
      case FoodCategory.dry:
        return '🌾';
      case FoodCategory.protein:
        return '🥩';
      case FoodCategory.snack:
        return '🍿';
      default:
        return '🍽️';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstant.green50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppDimens.defaultSpace,
                AppDimens.defaultSpace,
                AppDimens.defaultSpace,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppDimens.defaultSpace,
                children: [_buildSearchBar(), _buildCategoryChips()],
              ),
            ),
            const SizedBox(height: AppDimens.defaultSpace),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return AppTextField(
      filledColor: AppColorConstant.white,
      controller: _searchController,
      hintText: 'Tìm món ăn...',
      prefixIcon: const Icon(
        Icons.search_rounded,
        color: AppColorConstant.green800,
        size: AppDimens.mediumIconSize,
      ),
      onChanged: (q) => context.read<ListFoodBloc>().add(SearchFoods(q)),
    );
  }

  Widget _buildCategoryChips() {
    return BlocBuilder<ListFoodBloc, ListFoodState>(
      buildWhen: (prev, curr) => prev.category != curr.category,
      builder: (context, state) {
        return SizedBox(
          height: 36,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: FoodCategory.values.length,
            separatorBuilder: (_, __) =>
                const SizedBox(width: AppDimens.smallSpace),
            itemBuilder: (context, index) {
              final cat = FoodCategory.values[index];
              final isSelected = state.category == cat;
              return GestureDetector(
                onTap: () =>
                    context.read<ListFoodBloc>().add(FilterByCategory(cat)),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.defaultSpace,
                    vertical: AppDimens.extraSmallSpace,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColorConstant.primaryGreen
                        : AppColorConstant.white,
                    borderRadius: BorderRadius.circular(
                      AppDimens.largeBorderRadius,
                    ),
                    border: Border.all(
                      color: isSelected
                          ? AppColorConstant.primaryGreen
                          : AppColorConstant.gray300,
                    ),
                  ),
                  child: Text(
                    cat.label,
                    style: context.caption.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? AppColorConstant.white
                          : AppColorConstant.green900,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ListFoodBloc, ListFoodState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.displayedFoods.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppDimens.smallSpace,
              children: [
                Text('🔍', style: context.display),
                Text(
                  'Không tìm thấy món ăn',
                  style: context.bodySmall.copyWith(
                    color: AppColorConstant.greyText,
                  ),
                ),
              ],
            ),
          );
        }

        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.defaultSpace,
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppDimens.defaultSpace,
                  crossAxisSpacing: AppDimens.defaultSpace,
                  childAspectRatio: 0.9,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      _buildFoodCard(context, state.displayedFoods[index]),
                  childCount: state.displayedFoods.length,
                ),
              ),
            ),
            if (state.hasMore)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: AppDimens.largeSpace),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
            const SliverToBoxAdapter(
              child: SizedBox(height: AppDimens.extraLargeSpace),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFoodCard(BuildContext context, FoodEntity food) {
    return GestureDetector(
      onTap: () => AppNavigator(context: context).push(
        AppRoutePaths.detailFood,
        extra: food,
      ),
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppDimens.extraSmallSpace,
          children: [
            Text(_categoryEmoji(food.categoryId), style: context.title),
            const Spacer(),
            Text(
              food.name,
              style: context.bodySmall.copyWith(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              spacing: AppDimens.extraSmallSpace,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.smallSpace,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColorConstant.lightGreenBg,
                    borderRadius: BorderRadius.circular(
                      AppDimens.smallBorderRadius,
                    ),
                  ),
                  child: Text(
                    '${food.nutrition.calories.toStringAsFixed(0)} kcal',
                    style: context.caption.copyWith(
                      color: AppColorConstant.primaryGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '${food.weightGram}g · ${food.servingUnit}',
              style: context.caption.copyWith(color: AppColorConstant.greyText),
            ),
          ],
        ),
      ),
    );
  }
}
