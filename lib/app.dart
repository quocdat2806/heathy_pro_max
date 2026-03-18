import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_fitness_pro/core/navigation/index.dart';
import 'package:healthy_fitness_pro/core/config/app_config.dart';
import 'package:healthy_fitness_pro/core/themes/app_typography.dart';
import 'package:healthy_fitness_pro/core/utils/index.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter().router;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GestureDetector(
        onTap: () => KeyboardUtils.hideKeyboard(context),
        child: MaterialApp.router(
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: AppConfig.fontFamily,
            textTheme: AppTypography.lightTextTheme,
          ),
          routerConfig: _router,
        ),
      ),
    );
  }
}
