import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/food_category.dart';
import 'package:healthy_fitness_pro/core/enums/meal_type.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/food_bloc.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/food_event.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/food_state.dart';
import 'package:healthy_fitness_pro/shared/entities/food_entity.dart';

class DetailFoodScreen extends StatefulWidget {
  const DetailFoodScreen({super.key, required this.food});

  final FoodEntity food;

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  int quantity = 1;

  String get _categoryEmoji {
    switch (FoodCategory.fromId(widget.food.categoryId)) {
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

  double get _calories => widget.food.nutrition.calories * quantity;
  double get _protein => widget.food.nutrition.protein * quantity;
  double get _carbs => widget.food.nutrition.carbs * quantity;
  double get _fat => widget.food.nutrition.fat * quantity;

  /// MET (Metabolic Equivalent of Task) trung bình cho người 60kg.
  /// Công thức: phút = calories / (MET * 3.5 * 60kg / 200)
  int _burnMinutes(double metValue) {
    const double weightKg = 60.0;
    final double calsPerMin = (metValue * 3.5 * weightKg) / 200;
    return (_calories / calsPerMin).ceil();
  }

  static const List<Map<String, dynamic>> _exercises = [
    {'emoji': '🚴', 'label': 'Đạp xe', 'met': 6.8},
    {'emoji': '🏃', 'label': 'Chạy bộ', 'met': 9.8},
    {'emoji': '🏊', 'label': 'Bơi lội', 'met': 8.0},
    {'emoji': '🚶', 'label': 'Đi bộ', 'met': 3.5},
    {'emoji': '🧘', 'label': 'Yoga', 'met': 2.5},
    {'emoji': '⚽', 'label': 'Bóng đá', 'met': 7.0},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<FoodBloc, FoodState>(
      listener: (context, state) {
        if (state.isSaved) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                spacing: AppDimens.smallSpace,
                children: [
                  const Icon(Icons.check_circle, color: Colors.white, size: 18),
                  Text(
                    'Đã thêm vào ${state.selectedMealType.label}!',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              backgroundColor: AppColorConstant.primaryGreen,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDimens.defaultBorderRadius),
              ),
            ),
          );
          Navigator.pop(context);
        }
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: AppColorConstant.red,
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColorConstant.green50,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColorConstant.green900,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Thêm món ăn',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.defaultSpace),
          child: Column(
            spacing: AppDimens.defaultSpace,
            children: [
              _buildFoodDetailCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodDetailCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.largeSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        spacing: AppDimens.largeSpace,
        children: [
          _buildHeader(context),
          _buildMealTypeSelector(context),
          _buildQuantitySelector(context),
          _buildNutrients(context),
          _buildBurnCalories(context),
          _buildAddButton(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      spacing: AppDimens.defaultSpace,
      children: [
        Container(
          width: AppDimens.extraLargeContainerSize,
          height: AppDimens.extraLargeContainerSize,
          decoration: const BoxDecoration(
            color: AppColorConstant.lightGreenBg,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(_categoryEmoji, style: context.display),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppDimens.extraSmallSpace,
            children: [
              Text(
                widget.food.name,
                style: context.title.copyWith(color: AppColorConstant.green900),
              ),
              Text(
                '${widget.food.nutrition.calories.toStringAsFixed(0)} kcal · ${widget.food.weightGram}g · ${widget.food.servingUnit}',
                style: context.caption.copyWith(color: AppColorConstant.greyText),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.smallSpace,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColorConstant.lightGreenBg,
                  borderRadius: BorderRadius.circular(AppDimens.smallBorderRadius),
                ),
                child: Text(
                  FoodCategory.fromId(widget.food.categoryId).label,
                  style: context.caption.copyWith(
                    color: AppColorConstant.primaryGreen,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMealTypeSelector(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      buildWhen: (prev, curr) => prev.selectedMealType != curr.selectedMealType,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppDimens.smallSpace,
          children: [
            Text(
              'Thêm vào bữa',
              style: context.caption.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColorConstant.greyText,
              ),
            ),
            Row(
              spacing: AppDimens.smallSpace,
              children: MealType.values.map((meal) {
                final isSelected = state.selectedMealType == meal;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => context
                        .read<FoodBloc>()
                        .add(FoodEvent.selectMealType(meal)),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      padding: const EdgeInsets.symmetric(
                        vertical: AppDimens.smallSpace,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColorConstant.primaryGreen
                            : AppColorConstant.green50,
                        borderRadius: BorderRadius.circular(
                          AppDimens.defaultBorderRadius,
                        ),
                        border: Border.all(
                          color: isSelected
                              ? AppColorConstant.primaryGreen
                              : AppColorConstant.gray300,
                        ),
                      ),
                      child: Column(
                        spacing: 2,
                        children: [
                          Text(meal.emoji, style: context.caption),
                          Text(
                            meal.label,
                            style: context.caption.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? AppColorConstant.white
                                  : AppColorConstant.green900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }

  Widget _buildQuantitySelector(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.defaultSpace,
        vertical: AppDimens.smallSpace,
      ),
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Khẩu phần',
            style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            spacing: AppDimens.defaultSpace,
            children: [
              _buildRoundButton(
                Icons.remove,
                () => setState(() {
                  if (quantity > 1) quantity--;
                }),
              ),
              Text(
                '$quantity',
                style: context.bodySmall.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColorConstant.green900,
                ),
              ),
              _buildRoundButton(
                Icons.add,
                () => setState(() => quantity++),
                isPrimary: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoundButton(
    IconData icon,
    VoidCallback onTap, {
    bool isPrimary = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimens.smallSpace),
        decoration: BoxDecoration(
          color: isPrimary
              ? AppColorConstant.primaryGreen
              : AppColorConstant.white,
          shape: BoxShape.circle,
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Icon(
          icon,
          color: isPrimary ? AppColorConstant.white : AppColorConstant.primaryGreen,
          size: AppDimens.defaultIconSize,
        ),
      ),
    );
  }

  Widget _buildNutrients(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildNutrientItem(
          context,
          value: _calories.toStringAsFixed(0),
          unit: 'kcal',
          label: 'Calo',
          isMain: true,
        ),
        _buildNutrientItem(
          context,
          value: _protein.toStringAsFixed(1),
          unit: 'g',
          label: 'Protein',
        ),
        _buildNutrientItem(
          context,
          value: _carbs.toStringAsFixed(1),
          unit: 'g',
          label: 'Carbs',
        ),
        _buildNutrientItem(
          context,
          value: _fat.toStringAsFixed(1),
          unit: 'g',
          label: 'Fat',
        ),
      ],
    );
  }

  Widget _buildNutrientItem(
    BuildContext context, {
    required String value,
    required String unit,
    required String label,
    bool isMain = false,
  }) {
    return Container(
      width: 75,
      padding: const EdgeInsets.symmetric(vertical: AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: isMain
            ? AppColorConstant.lightGreenBg
            : AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Column(
        spacing: AppDimens.extraSmallSpace,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: context.bodySmall.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColorConstant.primaryGreen,
                  ),
                ),
                TextSpan(
                  text: '\n$unit',
                  style: context.caption.copyWith(
                    color: AppColorConstant.greyText,
                  ),
                ),
              ],
            ),
          ),
          Text(
            label,
            style: context.caption.copyWith(color: AppColorConstant.greyText),
          ),
        ],
      ),
    );
  }

  Widget _buildBurnCalories(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppDimens.smallSpace,
      children: [
        Row(
          spacing: AppDimens.extraSmallSpace,
          children: [
            const Icon(
              Icons.local_fire_department_rounded,
              color: AppColorConstant.orange,
              size: AppDimens.defaultIconSize,
            ),
            Text(
              'Thời gian đốt ${_calories.toStringAsFixed(0)} kcal',
              style: context.caption.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColorConstant.greyText,
              ),
            ),
          ],
        ),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: AppDimens.smallSpace,
          mainAxisSpacing: AppDimens.smallSpace,
          childAspectRatio: 2.2,
          children: _exercises.map((exercise) {
            final int mins = _burnMinutes(exercise['met'] as double);
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.smallSpace,
                vertical: AppDimens.extraSmallSpace,
              ),
              decoration: BoxDecoration(
                color: AppColorConstant.green50,
                borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
                border: Border.all(color: AppColorConstant.gray300),
              ),
              child: Row(
                spacing: AppDimens.extraSmallSpace,
                children: [
                  Text(exercise['emoji'] as String, style: context.caption),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$mins phút',
                          style: context.caption.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColorConstant.green900,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          exercise['label'] as String,
                          style: context.caption.copyWith(
                            fontSize: 10,
                            color: AppColorConstant.greyText,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      buildWhen: (prev, curr) =>
          prev.isLoading != curr.isLoading ||
          prev.selectedMealType != curr.selectedMealType,
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: AppDimens.largeButtonHeight,
          child: ElevatedButton(
            onPressed: state.isLoading
                ? null
                : () => context.read<FoodBloc>().add(
                      FoodEvent.addToMeal(
                        food: widget.food,
                        quantity: quantity,
                        mealType: state.selectedMealType,
                      ),
                    ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColorConstant.primaryGreen,
              disabledBackgroundColor:
                  AppColorConstant.primaryGreen.withValues(alpha: 0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppDimens.largeButtonBorderRadius,
                ),
              ),
              elevation: 0,
            ),
            child: state.isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    'Thêm vào ${state.selectedMealType.label}',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColorConstant.white,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
