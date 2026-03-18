import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class YourGoalScreen extends StatelessWidget {
  const YourGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppDimens.defaultSpace,
      children: [
        _buildYourGoalSection(
          icon: Text("🔥"),
          title: 'Giảm cân',
          description: 'Giảm mỡ,giữ cơ',
          onTap: () {},
          context: context,
        ),
        _buildYourGoalSection(
          icon: Text("⚖️"),
          title: 'Duy trì ',
          description: 'Giữ cân nặng ổn định',
          onTap: () {},
          context: context,
        ),
        _buildYourGoalSection(
          icon: Text("💪"),
          title: 'Tăng cân',
          description: 'Tăng cơ,tăng khối lượng',
          onTap: () {},
          context: context,
        ),
      ],
    );
  }

  Widget _buildYourGoalSection({
    required Widget icon,
    required String title,
    required String description,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    return AppCard(
      border: Border.all(color: AppColorConstant.green200),
      backgroundColor: AppColorConstant.white,
      child: Row(
        spacing: AppDimens.defaultSpace,
        children: [
          icon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.body.copyWith(
                  color: AppColorConstant.green900,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                description,
                style: context.bodySmall.copyWith(
                  color: AppColorConstant.green800,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
