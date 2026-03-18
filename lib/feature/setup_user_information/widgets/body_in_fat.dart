import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class BodyInFat extends StatelessWidget {
  final String title;
  final String bodyFatText;
  final String levelText;
  final double currentBodyFat;
  final Function(double) onChanged;
  const BodyInFat({
    super.key,
    this.title = '',
    this.bodyFatText = '',
    this.levelText = '',
    this.currentBodyFat = 0,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppDimens.defaultSpace,
      children: [
        Text(title, style: context.body),
        Center(
          child: RoundedContainer(
            child: Text(
              bodyFatText,
              style: context.title.copyWith(
                color: AppColorConstant.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColorConstant.green500,
            inactiveTrackColor: AppColorConstant.gray200,
            thumbColor: AppColorConstant.green500,
            overlayColor: AppColorConstant.green100,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 12),
          ),
          child: Slider(
            min: 5,
            max: 50,
            value: currentBodyFat,
            onChanged: onChanged,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '5%',
              style: context.bodySmall.copyWith(
                color: AppColorConstant.green800,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              levelText,
              style: context.bodySmall.copyWith(
                color: AppColorConstant.green800,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '50%',
              style: context.bodySmall.copyWith(
                color: AppColorConstant.green800,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
