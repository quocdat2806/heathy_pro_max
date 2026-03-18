import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 1, color: AppColorConstant.gray200);
  }
}
