import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/feature/calendar/blocs/calendar_bloc.dart';
import 'package:intl/intl.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  void initState() {
    super.initState();
    _loadCurrentMonth();
  }

  void _loadCurrentMonth() {
    context.read<CalendarBloc>().add(
          LoadCalendarMonth(DateTime.now()),
        );
  }

  void _goToPrevMonth(DateTime current) {
    final prev = DateTime(current.year, current.month - 1, 1);
    context.read<CalendarBloc>().add(LoadCalendarMonth(prev));
  }

  void _goToNextMonth(DateTime current) {
    final next = DateTime(current.year, current.month + 1, 1);
    context.read<CalendarBloc>().add(LoadCalendarMonth(next));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return ColoredBox(
          color: AppColorConstant.green50,
          child: SafeArea(
            child: Column(
              children: [
                _buildHeader(context, state),
                Expanded(
                  child: state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppDimens.defaultSpace,
                            vertical: AppDimens.smallSpace,
                          ),
                          child: Column(
                            children: [
                              _buildCalendarCard(context, state),
                              const SizedBox(height: AppDimens.defaultSpace),
                              _buildLegend(context, state),
                              const SizedBox(height: AppDimens.defaultSpace),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ──────────────────────────────────────────────────────────
  // Header: title + prev/next navigation
  // ──────────────────────────────────────────────────────────

  Widget _buildHeader(BuildContext context, CalendarState state) {
    final now = DateTime.now();
    final displayed = state.displayedMonth;
    final isCurrentMonth =
        displayed.year == now.year && displayed.month == now.month;

    // Vietnamese month name
    final monthName = DateFormat('MMMM yyyy', 'vi_VN').format(displayed);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.defaultSpace,
        vertical: AppDimens.defaultSpace,
      ),
      decoration: const BoxDecoration(
        color: AppColorConstant.green50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Lịch dinh dưỡng',
                style: context.title,
              ),
              const Spacer(),
              _MonthNavButton(
                icon: Icons.chevron_left_rounded,
                onTap: () => _goToPrevMonth(displayed),
              ),
              const SizedBox(width: AppDimens.smallSpace),
              _MonthNavButton(
                icon: Icons.chevron_right_rounded,
                onTap: isCurrentMonth ? null : () => _goToNextMonth(displayed),
              ),
            ],
          ),
          const SizedBox(height: AppDimens.extraSmallSpace),
          Text(
            _capitalize(monthName),
            style: context.bodySmall.copyWith(
              color: AppColorConstant.primaryGreen,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);

  // ──────────────────────────────────────────────────────────
  // Calendar card
  // ──────────────────────────────────────────────────────────

  Widget _buildCalendarCard(BuildContext context, CalendarState state) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColorConstant.green500.withAlpha(20),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildWeekdayHeader(context),
          const SizedBox(height: AppDimens.smallSpace),
          _buildDaysGrid(context, state),
        ],
      ),
    );
  }

  Widget _buildWeekdayHeader(BuildContext context) {
    const weekdays = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];
    return Row(
      children: weekdays.map((d) {
        final isSunday = d == 'CN';
        return Expanded(
          child: Center(
            child: Text(
              d,
              style: context.caption.copyWith(
                fontWeight: FontWeight.w700,
                color: isSunday
                    ? AppColorConstant.red
                    : AppColorConstant.greyText,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDaysGrid(BuildContext context, CalendarState state) {
    final displayed = state.displayedMonth;
    final firstDayOfMonth = DateTime(displayed.year, displayed.month, 1);
    final daysInMonth = DateTime(displayed.year, displayed.month + 1, 0).day;

    // weekday: 1=Mon … 7=Sun → offset 0..6
    int startOffset = firstDayOfMonth.weekday - 1;

    // Build grid cells
    final List<Widget> cells = [];

    // Leading empty cells
    for (int i = 0; i < startOffset; i++) {
      cells.add(const _EmptyCell());
    }

    // Day cells
    for (int day = 1; day <= daysInMonth; day++) {
      final dayData = state.dayDataMap[day];
      final isToday = _isToday(displayed, day);
      cells.add(_DayCell(day: day, dayData: dayData, isToday: isToday));
    }

    // Build rows of 7
    final List<Widget> rows = [];
    for (int i = 0; i < cells.length; i += 7) {
      final rowCells = cells.sublist(
        i,
        (i + 7) > cells.length ? cells.length : i + 7,
      );
      // pad last row if needed
      while (rowCells.length < 7) {
        rowCells.add(const _EmptyCell());
      }
      rows.add(Row(
        children: rowCells
            .map((c) => Expanded(child: c))
            .toList(),
      ));
      if (i + 7 < cells.length) {
        rows.add(const SizedBox(height: 6));
      }
    }

    return Column(children: rows);
  }

  bool _isToday(DateTime displayedMonth, int day) {
    final now = DateTime.now();
    return displayedMonth.year == now.year &&
        displayedMonth.month == now.month &&
        day == now.day;
  }

  // ──────────────────────────────────────────────────────────
  // Legend
  // ──────────────────────────────────────────────────────────

  Widget _buildLegend(BuildContext context, CalendarState state) {
    final goal = state.calorieGoal.toStringAsFixed(0);
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chú thích  •  Mục tiêu: $goal kcal/ngày',
            style: context.caption.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          const SizedBox(height: AppDimens.defaultSpace),
          _LegendItem(
            color: _statusColor(DayStatus.onTrack),
            label: 'Đạt mục tiêu',
            description: '${(state.calorieGoal - 200).toStringAsFixed(0)} – '
                '${(state.calorieGoal + 300).toStringAsFixed(0)} kcal',
            context: context,
          ),
          const SizedBox(height: AppDimens.smallSpace),
          _LegendItem(
            color: _statusColor(DayStatus.over),
            label: 'Ăn quá nhiều',
            description: '> ${(state.calorieGoal + 300).toStringAsFixed(0)} kcal',
            context: context,
          ),
          const SizedBox(height: AppDimens.smallSpace),
          _LegendItem(
            color: _statusColor(DayStatus.under),
            label: 'Ăn quá ít',
            description: '< ${(state.calorieGoal - 200).toStringAsFixed(0)} kcal',
            context: context,
          ),
          const SizedBox(height: AppDimens.smallSpace),
          _LegendItem(
            color: _statusColor(DayStatus.noData),
            label: 'Không có dữ liệu',
            description: 'Chưa ghi nhận bữa ăn',
            context: context,
          ),
        ],
      ),
    );
  }
}

// ──────────────────────────────────────────────────────────
// Helper: map status to color
// ──────────────────────────────────────────────────────────

Color _statusColor(DayStatus status) {
  switch (status) {
    case DayStatus.onTrack:
      return AppColorConstant.green500;
    case DayStatus.over:
      return AppColorConstant.red;
    case DayStatus.under:
      return AppColorConstant.yellow500;
    case DayStatus.noData:
      return AppColorConstant.gray300;
    case DayStatus.future:
      return Colors.transparent;
  }
}

Color _statusTextColor(DayStatus status) {
  switch (status) {
    case DayStatus.onTrack:
    case DayStatus.over:
      return Colors.white;
    case DayStatus.under:
      return AppColorConstant.green900;
    case DayStatus.noData:
      return AppColorConstant.gray500;
    case DayStatus.future:
      return AppColorConstant.gray400;
  }
}

// ──────────────────────────────────────────────────────────
// Sub-widgets
// ──────────────────────────────────────────────────────────

class _MonthNavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _MonthNavButton({required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDisabled = onTap == null;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: isDisabled
              ? AppColorConstant.gray300
              : AppColorConstant.lightGreenBg,
          borderRadius: BorderRadius.circular(AppDimens.defaultBorderRadius),
        ),
        child: Icon(
          icon,
          size: 20,
          color: isDisabled
              ? AppColorConstant.gray500
              : AppColorConstant.primaryGreen,
        ),
      ),
    );
  }
}

class _EmptyCell extends StatelessWidget {
  const _EmptyCell();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(aspectRatio: 1, child: SizedBox.shrink());
  }
}

class _DayCell extends StatelessWidget {
  final int day;
  final CalendarDayData? dayData;
  final bool isToday;

  const _DayCell({
    required this.day,
    required this.dayData,
    required this.isToday,
  });

  @override
  Widget build(BuildContext context) {
    final status = dayData?.status ?? DayStatus.future;
    final bgColor = _statusColor(status);
    final textColor = _statusTextColor(status);

    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            color: status == DayStatus.future ? Colors.transparent : bgColor,
            borderRadius: BorderRadius.circular(AppDimens.defaultBorderRadius),
            border: isToday
                ? Border.all(
                    color: AppColorConstant.green600,
                    width: 2,
                  )
                : null,
          ),
          child: Center(
            child: Text(
              '$day',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                fontWeight: isToday ? FontWeight.w800 : FontWeight.w500,
                color: status == DayStatus.future
                    ? AppColorConstant.gray400
                    : textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String description;
  final BuildContext context;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.description,
    required this.context,
  });

  @override
  Widget build(BuildContext ctx) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppDimens.smallBorderRadius),
            border: Border.all(color: AppColorConstant.gray300, width: 0.5),
          ),
        ),
        const SizedBox(width: AppDimens.smallSpace),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$label  ',
                  style: ctx.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColorConstant.textPrimary,
                  ),
                ),
                TextSpan(
                  text: description,
                  style: ctx.caption.copyWith(
                    color: AppColorConstant.greyText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
