import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';

class AppTypography {
  AppTypography._();
  static TextTheme lightTextTheme = _baseTextTheme(Brightness.light);
  static TextTheme darkTextTheme = _baseTextTheme(Brightness.dark);

  static TextTheme _baseTextTheme(Brightness brightness) {
    final base = brightness == Brightness.light
        ? ThemeData.light().textTheme
        : ThemeData.dark().textTheme;

    return GoogleFonts.notoSansTextTheme(base).copyWith(
      displayLarge: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700),
      headlineMedium: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
      titleLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
        color: AppColorConstant.green900,
      ),
      titleMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColorConstant.green900,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColorConstant.green800,
      ),
      labelMedium: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
    );
  }
}
