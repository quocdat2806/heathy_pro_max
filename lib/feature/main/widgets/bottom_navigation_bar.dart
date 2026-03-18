import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'navigation_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const MainBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.bottomNavigationHeight,
      child: ColoredBox(
        color: AppColorConstant.green50,
        child: Row(
          children: [
            MainNavigationItem(
              currentIndex: currentIndex,
              index: MainTabs.home.tabIndex,
              iconPath: AppImages.homeSvgs,
              label: MainTabs.home.label,
              onTap: () => onTabSelected(MainTabs.home.tabIndex),
            ),
            MainNavigationItem(
              currentIndex: currentIndex,
              index: MainTabs.search.tabIndex,
              iconPath: AppImages.searchSvgs,
              label: MainTabs.search.label,
              onTap: () => onTabSelected(MainTabs.search.tabIndex),
            ),
            const Expanded(child: SizedBox.shrink()),
            MainNavigationItem(
              currentIndex: currentIndex,
              index: MainTabs.stats.index,
              iconPath: AppImages.statsSvgs,
              label: MainTabs.stats.label,
              onTap: () => onTabSelected(MainTabs.stats.tabIndex),
            ),
            MainNavigationItem(
              currentIndex: currentIndex,
              index: MainTabs.profile.index,
              iconPath: AppImages.profileSvgs,
              label: MainTabs.profile.label,
              onTap: () => onTabSelected(MainTabs.profile.tabIndex),
            ),
          ],
        ),
      ),
    );
  }
}
