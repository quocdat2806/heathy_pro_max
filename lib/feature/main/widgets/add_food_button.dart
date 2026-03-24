import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';

class AddFoodButton extends StatelessWidget {
  const AddFoodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.deferToChild,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorConstant.green500,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.defaultSpace),
          child: Icon(Icons.add, color: AppColorConstant.white),
        ),
      ),
    );
  }
}
