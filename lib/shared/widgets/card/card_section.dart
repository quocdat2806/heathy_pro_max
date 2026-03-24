import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class CardSection extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final VoidCallback onTap;
  final bool isSelected;

  const CardSection({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AppCard(
        border: Border.all(
          color: isSelected
              ? AppColorConstant.green500
              : AppColorConstant.green200,
        ),
        backgroundColor: isSelected
            ? AppColorConstant.green50
            : AppColorConstant.white,
        child: Row(
          spacing: AppDimens.defaultSpace,
          children: [
            icon,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.body),
                Text(description, style: context.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
