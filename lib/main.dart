import 'dart:async';
import 'app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
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
      await di.initInjection();
      runApp(const App());
    },
    (error, stack) {
      appLogger.e(error, stack);
    },
  );
}
