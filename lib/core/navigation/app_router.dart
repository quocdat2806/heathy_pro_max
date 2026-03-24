import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_fitness_pro/core/di/injection.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/food_bloc.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/list_food_bloc.dart';
import 'package:healthy_fitness_pro/feature/food/blocs/list_food_event.dart';
import 'package:healthy_fitness_pro/feature/food/screen/detail_food_screen.dart';
import 'package:healthy_fitness_pro/feature/food/screen/list_food_screen.dart';
import 'package:healthy_fitness_pro/feature/main/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/entities/food_entity.dart';
import 'package:healthy_fitness_pro/shared/repositories/food_repository.dart';
import 'package:healthy_fitness_pro/shared/repositories/meal_log_repository.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';

import 'router_path.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePaths.main,
    redirect: (context, state) async {
      final userInfo =
          await sl<UserPreferencesRepository>().loadInputUserInfo();
      final isOnSetup =
          state.matchedLocation == AppRoutePaths.setupUserInformation;

      // Lần đầu vào app chưa có dữ liệu → bắt buộc đi setup
      if (userInfo == null && !isOnSetup) {
        return AppRoutePaths.setupUserInformation;
      }
      return null;
    },
    errorBuilder: (_, GoRouterState state) =>
        const Scaffold(body: Center(child: Text('Page not found'))),
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutePaths.setupUserInformation,
        builder: (context, state) => BlocProvider(
          create: (_) =>
              SetupUserInformationBloc(sl<UserPreferencesRepository>()),
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
      GoRoute(
        path: AppRoutePaths.detailFood,
        builder: (context, state) => BlocProvider(
          create: (_) => FoodBloc(sl<MealLogRepository>()),
          child: DetailFoodScreen(food: state.extra! as FoodEntity),
        ),
      ),
      GoRoute(
        path: AppRoutePaths.listFood,
        builder: (context, state) => BlocProvider(
          create: (_) =>
              ListFoodBloc(sl<FoodRepository>())..add(LoadFoods()),
          child: const ListFoodScreen(),
        ),
      ),
    ],
  );
}
