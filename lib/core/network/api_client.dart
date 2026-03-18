import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:healthy_fitness_pro/core/config/app_config.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: AppConfig.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;
}
