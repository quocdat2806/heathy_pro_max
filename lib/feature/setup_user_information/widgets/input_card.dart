import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';

class InputCard extends StatelessWidget {
  final String label;
  final String value;
  final int min;
  final int max;
  final String unit;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  const InputCard({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.unit,
    this.onChanged,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.number,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        spacing: AppDimens.defaultSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.body),
          AppTextField(
            filledColor: AppColorConstant.green50,
            controller: controller,
            hintText: hintText,

            keyboardType: keyboardType,
            onChanged: onChanged,
            inputFormatters: keyboardType == TextInputType.number
                ? [FilteringTextInputFormatter.digitsOnly]
                : null,
          ),
          Row(
            spacing: AppDimens.smallSpace,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              suffixIcon != null ? suffixIcon! : SizedBox.shrink(),
              Text('$min - $max', style: context.bodySmall),
              Text(unit, style: context.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
