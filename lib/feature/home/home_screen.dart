import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/meal_type.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/core/navigation/app_navigation.dart';
import 'package:healthy_fitness_pro/core/navigation/router_path.dart';
import 'package:healthy_fitness_pro/feature/home/blocs/home_bloc.dart';
import 'package:healthy_fitness_pro/feature/home/blocs/home_event.dart';
import 'package:healthy_fitness_pro/feature/home/blocs/home_state.dart';
import 'package:healthy_fitness_pro/shared/entities/meal_log_entity.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loadTodayLogs());
  }

  Future<void> _navigateToListFood() async {
    await AppNavigator(context: context).push(AppRoutePaths.listFood);
    if (mounted) {
      context.read<HomeBloc>().add(const HomeEvent.loadTodayLogs());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: ColoredBox(
            color: AppColorConstant.green50,
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.largeSpace),
              child: Column(
                spacing: AppDimens.defaultSpace,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(context),
                  _buildCircularProgress(context, state),
                  _buildRemainingCalories(context, state),
                  AppCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildMacroItem(
                          'Protein',
                          state.consumedProtein,
                          state.proteinGoal,
                          'g',
                          AppColorConstant.primaryGreen,
                          AppColorConstant.lightGreenBg,
                          context,
                        ),
                        _buildMacroItem(
                          'Carbs',
                          state.consumedCarbs,
                          state.carbGoal,
                          'g',
                          AppColorConstant.orange,
                          AppColorConstant.orangeBg,
                          context,
                        ),
                        _buildMacroItem(
                          'Fat',
                          state.consumedFat,
                          state.fatGoal,
                          'g',
                          AppColorConstant.red,
                          AppColorConstant.redBg,
                          context,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BỮA ĂN HÔM NAY',
                        style: context.bodySmall.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: _navigateToListFood,
                        child: Text(
                          'Thêm khẩu phần ăn',
                          style: context.caption.copyWith(
                            color: AppColorConstant.primaryGreen,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (state.isLoading)
                    const Center(child: CircularProgressIndicator())
                  else
                    ...MealType.values.map(
                      (meal) => _buildMealCard(
                        context: context,
                        meal: meal,
                        items: state.todayLogs
                            .where((l) => l.mealTypeId == meal.id)
                            .toList(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) return 'Chào buổi sáng 👋';
    if (hour >= 12 && hour < 18) return 'Chào buổi chiều 👋';
    return 'Chào buổi tối 👋';
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_greeting, style: context.bodySmall),
            Text('Hôm nay bạn ăn gì?', style: context.title),
          ],
        ),
        RoundedContainer(
          width: AppDimens.mediumContainerSize,
          height: AppDimens.mediumContainerSize,
          child: SvgPicture.asset(
            AppImages.leafSvgs,
            width: AppDimens.svgSizeExtraLarge,
            colorFilter: const ColorFilter.mode(
              AppColorConstant.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCircularProgress(BuildContext context, HomeState state) {
    final consumed = state.consumedCalories;
    final goal = state.calorieGoal;
    final progress = state.calorieProgress;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.smallSpace),
      child: Center(
        child: SizedBox(
          width: AppDimens.superSuperExtraLargeContainerSize.w,
          height: AppDimens.superSuperExtraLargeContainerSize.h,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const CircularProgressIndicator(
                value: 1.0,
                strokeWidth: 16,
                color: AppColorConstant.lightGreenBg,
              ),
              CircularProgressIndicator(
                value: progress,
                strokeWidth: 16,
                color: AppColorConstant.primaryGreen,
                strokeCap: StrokeCap.round,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ĐÃ ĂN',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${consumed.toStringAsFixed(0)}/${goal.toStringAsFixed(0)}',
                    style: context.display.copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColorConstant.green900,
                    ),
                  ),
                  Text(
                    'kcal',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRemainingCalories(BuildContext context, HomeState state) {
    final remaining = state.remainingCalories;
    final isOver = state.consumedCalories > state.calorieGoal;
    final dotColor = isOver
        ? AppColorConstant.red
        : AppColorConstant.primaryGreen;
    return Row(
      spacing: AppDimens.smallSpace,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        Text(
          isOver
              ? 'Vượt ${(state.consumedCalories - state.calorieGoal).toStringAsFixed(0)} kcal'
              : 'Còn lại ${remaining.toStringAsFixed(0)} kcal',
          style: context.bodySmall.copyWith(
            color: isOver ? AppColorConstant.red : null,
          ),
        ),
      ],
    );
  }

  Widget _buildMacroItem(
    String label,
    double current,
    double total,
    String unit,
    Color color,
    Color bgColor,
    BuildContext context,
  ) {
    final progress = total > 0 ? (current / total).clamp(0.0, 1.0) : 0.0;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.smallSpace),
        child: Column(
          spacing: AppDimens.smallSpace,
          children: [
            Text(label, style: context.bodySmall),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: AppColorConstant.green900,
                ),
                children: [
                  TextSpan(
                    text: current.toStringAsFixed(0),
                    style: context.bodySmall,
                  ),
                  TextSpan(
                    text: '/${total.toStringAsFixed(0)}$unit',
                    style: context.caption,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                AppDimens.defaultBorderRadius,
              ),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: bgColor,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealCard({
    required BuildContext context,
    required MealType meal,
    required List<MealLogEntity> items,
  }) {
    final totalKcal = items.fold<double>(
      0,
      (sum, item) => sum + item.totalCalories,
    );

    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.smallSpace,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                spacing: AppDimens.smallSpace,
                children: [
                  Text(meal.emoji, style: context.bodySmall),
                  Text(
                    meal.label,
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    onTap: _navigateToListFood,
                    borderRadius: BorderRadius.circular(
                      AppDimens.superSmallContainerSize,
                    ),
                    child: RoundedContainer(
                      width: 20,
                      height: 20,
                      child: const Icon(
                        Icons.add,
                        size: 16,
                        color: AppColorConstant.white,
                      ),
                    ),
                  ),
                ],
              ),
              if (totalKcal > 0)
                Text(
                  '${totalKcal.toStringAsFixed(0)} kcal',
                  style: context.bodySmall.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColorConstant.green500,
                  ),
                ),
            ],
          ),
          if (items.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppDimens.smallSpace,
              ),
              child: Text(
                'Chưa có món ăn nào',
                style: context.caption.copyWith(
                  color: AppColorConstant.greyText,
                ),
              ),
            )
          else
            for (int i = 0; i < items.length; i++) ...[
              _buildMealItem(context, items[i], i + 1),
              if (i < items.length - 1)
                const Divider(
                  height: AppDimens.defaultSpace,
                  thickness: 0.5,
                  color: AppColorConstant.gray300,
                ),
            ],
        ],
      ),
    );
  }

  Widget _buildMealItem(BuildContext context, MealLogEntity item, int index) {
    final labelStyle = context.caption.copyWith(
      color: AppColorConstant.greyText,
    );
    final valueStyle = context.caption.copyWith(
      fontWeight: FontWeight.w600,
      color: AppColorConstant.green900,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppDimens.extraSmallSpace,
      children: [
        Text(
          'Món thứ $index',
          style: context.caption.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColorConstant.primaryGreen,
          ),
        ),
        _buildInfoRow(
          'Tên món',
          item.foodName,
          labelStyle,
          valueStyle,
          context,
        ),
        _buildInfoRow(
          'Số lượng',
          '${item.quantity} ${item.servingUnit}',
          labelStyle,
          valueStyle,
          context,
        ),
        _buildInfoRow(
          'Trọng lượng',
          '${item.weightGram} g',
          labelStyle,
          valueStyle,
          context,
        ),
        _buildInfoRow(
          'Calories',
          '${item.totalCalories.toStringAsFixed(0)} kcal',
          labelStyle,
          context.caption.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColorConstant.primaryGreen,
          ),
          context,
        ),
      ],
    );
  }

  Widget _buildInfoRow(
    String label,
    String value,
    TextStyle labelStyle,
    TextStyle valueStyle,
    BuildContext context,
  ) {
    return Row(
      children: [
        Expanded(flex: 4, child: Text('$label :', style: labelStyle)),
        Expanded(flex: 6, child: Text(value, style: valueStyle)),
      ],
    );
  }
}
