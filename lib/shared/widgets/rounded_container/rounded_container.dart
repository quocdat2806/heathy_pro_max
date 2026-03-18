import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';

class RoundedContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  const RoundedContainer({
    super.key,
    this.width = AppDimens.extraLargeContainerSize,
    this.height = AppDimens.extraLargeContainerSize,
    this.child,
    this.gradient,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final gradient =
        this.gradient ??
        const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColorConstant.greenGradientStart,
            AppColorConstant.greenGradientEnd,
          ],
        );
    final boxShadow =
        this.boxShadow ??
        [
          BoxShadow(
            color: AppColorConstant.greenGradientShadow,
            offset: const Offset(0, 8),
            blurRadius: 24,
            spreadRadius: -6,
          ),
        ];

    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: gradient,
        boxShadow: boxShadow,
      ),
      child: child != null ? Center(child: child) : null,
    );
  }
}
