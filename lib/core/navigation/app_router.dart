import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_fitness_pro/feature/main/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';

import 'router_path.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePaths.setupUserInformation,
    errorBuilder: (_, GoRouterState state) =>
        const Scaffold(body: Center(child: Text('Page not found'))),
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutePaths.setupUserInformation,
        builder: (context, state) => BlocProvider(
          create: (context) => SetupUserInformationBloc(),
          child: const SetupUserInformationScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutePaths.main,
        builder: (context, state) => BlocProvider(
          create: (context) => MainBloc(),
          child: const MainScreen(),
        ),
      ),
    ],
  );
}
