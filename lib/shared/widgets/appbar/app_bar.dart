import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/app_colors.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/core/navigation/app_navigation.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.onLeadingTap,
    this.centerTitle = false,
    this.showBackButton = true,
    this.showTitle = false,
  });

  final dynamic title;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;
  final bool centerTitle;
  final bool? showBackButton;
  final bool? showTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: showTitle ?? false
          ? title is String
                ? Text(title as String, style: context.title)
                : title as Widget
          : null,
      centerTitle: centerTitle,
      backgroundColor: AppColorConstant.green50,
      titleSpacing: 0,
      elevation: 0,
      leading: showBackButton ?? false
          ? leading ??
                IconButton(
                  icon: Icon(Icons.arrow_back, color: AppColorConstant.black),
                  onPressed: onLeadingTap ?? () => _handleBack(context),
                )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _handleBack(BuildContext context) {
    AppNavigator(context: context).maybePop();
  }
}
