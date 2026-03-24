import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';

class MainNavigationItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;
  final VoidCallback? onTap;

  const MainNavigationItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = index == currentIndex;
    final Color iconColor = isActive
        ? AppColorConstant.green500
        : AppColorConstant.black;
    final TextStyle textStyle = isActive
        ? context.caption.copyWith(color: AppColorConstant.green500)
        : context.caption.copyWith(color: AppColorConstant.black);

    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          spacing: AppDimens.extraSmallSpace,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
            Text(label, style: textStyle),
          ],
        ),
      ),
    );
  }
}
