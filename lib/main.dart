import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy_fitness_pro/app.dart';
import 'package:healthy_fitness_pro/core/services/secure_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/di/injection.dart' as di;
import 'core/utils/index.dart';

Future<void> main() async {
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initializeDateFormatting('vi_VN');
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      );
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

      await _clearKeychainOnFreshInstall();

      await di.initInjection();
      runApp(const App());
    },
    (error, stack) {
      appLogger.e(error, stack);
    },
  );
}

Future<void> _clearKeychainOnFreshInstall() async {
  const hasLaunchedBeforeKey = 'has_launched_before';
  final prefs = await SharedPreferences.getInstance();
  final hasLaunchedBefore = prefs.getBool(hasLaunchedBeforeKey) ?? false;

  if (!hasLaunchedBefore) {
    await SecureStorageService().deleteAll();
    await prefs.setBool(hasLaunchedBeforeKey, true);
  }
}
