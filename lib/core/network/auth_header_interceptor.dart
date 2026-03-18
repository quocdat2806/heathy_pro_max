import 'package:dio/dio.dart';
import 'package:healthy_fitness_pro/core/config/app_config.dart';
import 'package:healthy_fitness_pro/core/services/secure_storage.dart';

class AuthHeaderInterceptor extends Interceptor {
  AuthHeaderInterceptor({required this.secure});
  final SecureStorageService secure;

  static const String _key = AppConfig.tokenKey;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = await secure.read(_key);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
