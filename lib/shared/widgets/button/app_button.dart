import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/app_colors.dart';

enum AppButtonVariant { primary, secondary, outline, text, danger }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.text,
    required this.onPressed,
    this.icon,
    this.iconWidget,
    this.height = 48,
    this.borderRadius = 8,
    this.width,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.disabled = false,
    this.variant = AppButtonVariant.primary,
  });

  final String? text;
  final VoidCallback onPressed;

  final IconData? icon;
  final Widget? iconWidget;

  final double height;
  final double borderRadius;
  final double? width;
  final double fontSize;
  final FontWeight fontWeight;
  final bool disabled;
  final AppButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    final style = _resolveStyle(context);

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: style,
        child: _buildContent(context),
      ),
    );
  }

  ButtonStyle _resolveStyle(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (variant) {
      case AppButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColorConstant.green500,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );

      case AppButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );

      case AppButtonVariant.outline:
        return OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );

      case AppButtonVariant.text:
        return TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );

      case AppButtonVariant.danger:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );
    }
  }

  Widget _buildContent(BuildContext context) {
    final hasText = text != null && text!.isNotEmpty;
    final hasIcon = icon != null || iconWidget != null;

    final iconWidgetFinal =
        iconWidget ?? (icon != null ? Icon(icon, size: 18) : null);

    if (hasIcon && !hasText) {
      return iconWidgetFinal!;
    }

    if (!hasIcon && hasText) {
      return Text(
        text!,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        iconWidgetFinal!,
        const SizedBox(width: 8),
        Text(
          text!,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ],
    );
  }
}
