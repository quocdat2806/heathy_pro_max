import 'package:flutter/material.dart';

extension AppTextExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle get display => textTheme.displayLarge!;
  TextStyle get headline => textTheme.headlineMedium!;
  TextStyle get title => textTheme.titleLarge!;
  TextStyle get subTitle => textTheme.titleMedium!;
  TextStyle get body => textTheme.bodyLarge!;
  TextStyle get bodySmall => textTheme.bodyMedium!;
  TextStyle get label => textTheme.labelMedium!;
  TextStyle get caption => textTheme.labelSmall!;
}
