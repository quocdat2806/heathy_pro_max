import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/feature/stats/blocs/stats_bloc.dart';
import 'package:healthy_fitness_pro/feature/stats/blocs/stats_event.dart';
import 'package:healthy_fitness_pro/feature/stats/blocs/stats_state.dart';

class WeeklyStatsScreen extends StatelessWidget {
  const WeeklyStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColorConstant.primaryGreen,
            ),
          );
        }
        return RefreshIndicator(
          color: AppColorConstant.primaryGreen,
          onRefresh: () async =>
              context.read<StatsBloc>().add(const LoadWeeklyStats()),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(AppDimens.defaultSpace),
            child: Column(
              spacing: AppDimens.defaultSpace,
              children: [
                const SizedBox(height: AppDimens.smallSpace),
                _buildHeader(context),
                _buildSummaryCards(context, state),
                _buildCalorieChart(context, state),
                _buildNutritionAverage(context, state),
                _buildDayByDayLog(context, state),
                const SizedBox(height: AppDimens.defaultSpace),
              ],
            ),
          ),
        );
      },
    );
  }

  // ─── Header ─────────────────────────────────────────────────────────────────
  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '📊 Thống kê 7 ngày',
          style: context.title.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColorConstant.green900,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.smallSpace,
            vertical: AppDimens.extraSmallSpace,
          ),
          decoration: BoxDecoration(
            color: AppColorConstant.lightGreenBg,
            borderRadius: BorderRadius.circular(AppDimens.defaultBorderRadius),
          ),
          child: Text(
            'Tuần này',
            style: context.caption.copyWith(
              color: AppColorConstant.primaryGreen,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  // ─── 3 thẻ tóm tắt ──────────────────────────────────────────────────────────
  Widget _buildSummaryCards(BuildContext context, StatsState state) {
    final deficit = state.calorieDeficit;
    final deficitColor =
        deficit < 0 ? AppColorConstant.primaryGreen : AppColorConstant.red;
    final deficitLabel = deficit < 0 ? 'Thâm hụt' : 'Vượt mức';

    return Row(
      spacing: AppDimens.smallSpace,
      children: [
        _SummaryCard(
          icon: Icons.local_fire_department_rounded,
          iconColor: AppColorConstant.orange,
          value: state.avgCalories.toStringAsFixed(0),
          unit: 'kcal',
          label: 'TB / ngày',
        ),
        _SummaryCard(
          icon: Icons.track_changes_rounded,
          iconColor: AppColorConstant.primaryGreen,
          value: state.calorieGoal != null
              ? state.calorieGoal!.toStringAsFixed(0)
              : '--',
          unit: 'kcal',
          label: 'Mục tiêu',
        ),
        _SummaryCard(
          icon: deficit < 0
              ? Icons.trending_down_rounded
              : Icons.trending_up_rounded,
          iconColor: deficitColor,
          value: state.hasGoals ? deficit.abs().toStringAsFixed(0) : '--',
          unit: 'kcal',
          label: deficitLabel,
          valueColor: deficitColor,
        ),
      ],
    );
  }

  // ─── Biểu đồ cột ────────────────────────────────────────────────────────────
  Widget _buildCalorieChart(BuildContext context, StatsState state) {
    final goalY = state.calorieGoal ?? 2000;
    final maxY = ([
              goalY * 1.3,
              ...state.weeklyData.map((d) => d.calories),
            ].reduce((a, b) => a > b ? a : b) /
            100)
        .ceil() *
        100.0;

    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.defaultSpace,
        children: [
          Text(
            'Calo theo ngày',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                barTouchData: BarTouchData(
                  enabled: true,
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (_) => AppColorConstant.green900,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      final d = state.weeklyData[group.x];
                      if (!d.hasData) return null;
                      return BarTooltipItem(
                        '${d.calories.toStringAsFixed(0)} kcal',
                        const TextStyle(
                          color: AppColorConstant.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      );
                    },
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (_) => FlLine(
                    color: AppColorConstant.gray300,
                    strokeWidth: 0.8,
                    dashArray: [4, 4],
                  ),
                ),
                borderData: FlBorderData(show: false),
                alignment: BarChartAlignment.spaceAround,
                maxY: maxY,
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: goalY,
                      color: AppColorConstant.orange,
                      strokeWidth: 1.5,
                      dashArray: [6, 4],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.topRight,
                        labelResolver: (_) =>
                            'Mục tiêu ${goalY.toStringAsFixed(0)}',
                        style: const TextStyle(
                          color: AppColorConstant.orange,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final i = value.toInt();
                        if (i < 0 || i >= state.weeklyData.length) {
                          return const SizedBox.shrink();
                        }
                        final date = state.weeklyData[i].date;
                        final labels = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];
                        final dayLabel =
                            labels[date.weekday - 1]; // weekday: 1=Mon..7=Sun
                        return Padding(
                          padding: const EdgeInsets.only(top: AppDimens.extraSmallSpace),
                          child: Text(
                            dayLabel,
                            style: context.caption.copyWith(
                              color: AppColorConstant.greyText,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                barGroups: List.generate(state.weeklyData.length, (i) {
                  final d = state.weeklyData[i];
                  final isOver = d.calories > goalY;
                  final isToday = i == state.weeklyData.length - 1;
                  return BarChartGroupData(
                    x: i,
                    barRods: [
                      BarChartRodData(
                        toY: d.hasData ? d.calories : 0,
                        color: d.hasData
                            ? (isOver
                                ? AppColorConstant.red.withValues(alpha: 0.8)
                                : isToday
                                    ? AppColorConstant.primaryGreen
                                    : AppColorConstant.primaryGreen
                                        .withValues(alpha: 0.5))
                            : AppColorConstant.gray300,
                        width: 22,
                        borderRadius: BorderRadius.circular(
                          AppDimens.smallBorderRadius,
                        ),
                        backDrawRodData: BackgroundBarChartRodData(
                          show: true,
                          toY: maxY,
                          color: AppColorConstant.green50,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          // Legend
          Row(
            spacing: AppDimens.defaultSpace,
            children: [
              _LegendDot(
                color: AppColorConstant.primaryGreen,
                label: 'Trong mục tiêu',
              ),
              _LegendDot(
                color: AppColorConstant.red.withValues(alpha: 0.8),
                label: 'Vượt mục tiêu',
              ),
              _LegendDot(
                color: AppColorConstant.gray300,
                label: 'Chưa có data',
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ─── Dinh dưỡng trung bình ──────────────────────────────────────────────────
  Widget _buildNutritionAverage(BuildContext context, StatsState state) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.defaultSpace,
        children: [
          Text(
            'Dinh dưỡng trung bình / ngày',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          _NutrientProgressRow(
            label: 'Protein',
            current: state.avgProtein,
            goal: state.proteinGoal ?? 0,
            color: AppColorConstant.primaryGreen,
          ),
          _NutrientProgressRow(
            label: 'Carbs',
            current: state.avgCarbs,
            goal: state.carbGoal ?? 0,
            color: AppColorConstant.orange,
          ),
          _NutrientProgressRow(
            label: 'Fat',
            current: state.avgFat,
            goal: state.fatGoal ?? 0,
            color: AppColorConstant.red,
          ),
        ],
      ),
    );
  }

  // ─── Log từng ngày ──────────────────────────────────────────────────────────
  Widget _buildDayByDayLog(BuildContext context, StatsState state) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.smallSpace,
        children: [
          Text(
            'Chi tiết từng ngày',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          // Reversed: hôm nay đứng đầu
          ...state.weeklyData.reversed.map(
            (d) => _DayLogTile(day: d, calorieGoal: state.calorieGoal ?? 0),
          ),
        ],
      ),
    );
  }
}

// ─── Sub-widgets ─────────────────────────────────────────────────────────────

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.unit,
    required this.label,
    this.valueColor,
  });

  final IconData icon;
  final Color iconColor;
  final String value;
  final String unit;
  final String label;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.smallSpace,
          horizontal: AppDimens.extraSmallSpace,
        ),
        decoration: BoxDecoration(
          color: AppColorConstant.white,
          borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
          border: Border.all(color: AppColorConstant.gray300),
        ),
        child: Column(
          spacing: AppDimens.extraSmallSpace,
          children: [
            Icon(icon, color: iconColor, size: AppDimens.defaultIconSize),
            Text(
              value,
              style: context.caption.copyWith(
                fontWeight: FontWeight.w700,
                color: valueColor ?? AppColorConstant.green900,
                fontSize: 15,
              ),
            ),
            Text(
              unit,
              style: context.caption.copyWith(
                color: AppColorConstant.greyText,
                fontSize: 10,
              ),
            ),
            Text(
              label,
              style: context.caption.copyWith(
                color: AppColorConstant.greyText,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _NutrientProgressRow extends StatelessWidget {
  const _NutrientProgressRow({
    required this.label,
    required this.current,
    required this.goal,
    required this.color,
  });

  final String label;
  final double current;
  final double goal;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final progress = goal > 0 ? (current / goal).clamp(0.0, 1.0) : 0.0;
    final isOver = current > goal;
    return Column(
      spacing: AppDimens.extraSmallSpace,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: context.caption.copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              spacing: AppDimens.extraSmallSpace,
              children: [
                Text(
                  '${current.toStringAsFixed(0)}g',
                  style: context.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    color: isOver ? AppColorConstant.red : AppColorConstant.green900,
                  ),
                ),
                Text(
                  '/ ${goal.toStringAsFixed(0)}g',
                  style: context.caption.copyWith(
                    color: AppColorConstant.greyText,
                  ),
                ),
              ],
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.smallBorderRadius),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: color.withValues(alpha: 0.12),
            valueColor: AlwaysStoppedAnimation<Color>(
              isOver ? AppColorConstant.red : color,
            ),
            minHeight: 8,
          ),
        ),
      ],
    );
  }
}

class _DayLogTile extends StatelessWidget {
  const _DayLogTile({required this.day, required this.calorieGoal});

  final DailyNutrition day;
  final double calorieGoal;

  static const _weekdays = ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'];

  String get _label {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dayDate = DateTime(day.date.year, day.date.month, day.date.day);
    final diff = today.difference(dayDate).inDays;
    if (diff == 0) return 'Hôm nay';
    if (diff == 1) return 'Hôm qua';
    return _weekdays[day.date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    final isOver = day.calories > calorieGoal;
    final progress =
        calorieGoal > 0 ? (day.calories / calorieGoal).clamp(0.0, 1.0) : 0.0;

    return Container(
      padding: const EdgeInsets.all(AppDimens.smallSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Row(
        spacing: AppDimens.smallSpace,
        children: [
          // Ngày
          SizedBox(
            width: 64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _label,
                  style: context.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColorConstant.green900,
                  ),
                ),
                Text(
                  '${day.date.day}/${day.date.month}',
                  style: context.caption.copyWith(
                    color: AppColorConstant.greyText,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          // Progress + kcal
          Expanded(
            child: Column(
              spacing: 4,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimens.smallBorderRadius),
                  child: LinearProgressIndicator(
                    value: day.hasData ? progress : 0,
                    backgroundColor: AppColorConstant.gray300,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      !day.hasData
                          ? AppColorConstant.gray300
                          : isOver
                              ? AppColorConstant.red
                              : AppColorConstant.primaryGreen,
                    ),
                    minHeight: 8,
                  ),
                ),
              ],
            ),
          ),
          // Kcal value
          SizedBox(
            width: 72,
            child: Text(
              day.hasData
                  ? '${day.calories.toStringAsFixed(0)} kcal'
                  : '— kcal',
              style: context.caption.copyWith(
                fontWeight: FontWeight.w700,
                color: day.hasData
                    ? (isOver ? AppColorConstant.red : AppColorConstant.green900)
                    : AppColorConstant.greyText,
                fontSize: 11,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

class _LegendDot extends StatelessWidget {
  const _LegendDot({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppDimens.extraSmallSpace,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        Text(
          label,
          style: context.caption.copyWith(
            color: AppColorConstant.greyText,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
