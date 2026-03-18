import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/app_colors.dart';
import 'package:healthy_fitness_pro/core/constants/app_dimens.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final Border? border;
  final Color backgroundColor;

  const AppCard({
    super.key,
    required this.child,
    this.border,
    this.backgroundColor = AppColorConstant.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
