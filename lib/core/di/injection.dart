import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_fitness_pro/core/network/index.dart';
import 'package:healthy_fitness_pro/core/services/index.dart';
import 'package:healthy_fitness_pro/core/database/index.dart';
import 'package:healthy_fitness_pro/shared/repositories/index.dart';
import 'package:healthy_fitness_pro/core/isolate/index.dart';

final GetIt sl = GetIt.instance;

Future<void> initInjection() async {
  sl.registerLazySingleton<Connectivity>(Connectivity.new);
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl<Connectivity>()),
  );
  sl.registerLazySingleton<LocalDatabase>(LocalDatabase.new);
  sl<LocalDatabase>().warmUp();
  sl.registerLazySingleton<SeedFoodIsolate>(SeedFoodIsolate.new);
  sl.registerLazySingleton<SecureStorageService>(SecureStorageService.new);
  sl.registerLazySingleton<LoggingInterceptor>(LoggingInterceptor.new);
  sl.registerLazySingleton<FoodRepository>(
    () => FoodRepositoryImpl(sl<LocalDatabase>(), sl<SeedFoodIsolate>()),
  );
  sl.registerLazySingleton<MealLogRepository>(
    () => MealLogRepositoryImpl(sl<LocalDatabase>()),
  );
  sl.registerLazySingleton<UserPreferencesRepository>(
    () => UserPreferencesRepositoryImpl(sl<SecureStorageService>()),
  );
  sl.registerLazySingleton<AppDio>(
    () => TranslationDio(
      networkInfo: sl<NetworkInfo>(),
      secure: sl<SecureStorageService>(),
      logging: sl<LoggingInterceptor>(),
    ),
  );

  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<AppDio>().dio));
}
