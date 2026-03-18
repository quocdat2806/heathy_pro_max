import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_fitness_pro/core/network/module_network.dart';
import 'package:healthy_fitness_pro/core/services/secure_storage.dart';

final GetIt sl = GetIt.instance;

Future<void> initInjection() async {
  sl.registerLazySingleton<Connectivity>(Connectivity.new);
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl<Connectivity>()),
  );
  sl.registerLazySingleton<SecureStorageService>(SecureStorageService.new);
  sl.registerLazySingleton<LoggingInterceptor>(LoggingInterceptor.new);

  sl.registerLazySingleton<AppDio>(
    () => TranslationDio(
      networkInfo: sl<NetworkInfo>(),
      secure: sl<SecureStorageService>(),
      logging: sl<LoggingInterceptor>(),
    ),
  );

  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<AppDio>().dio));
}
