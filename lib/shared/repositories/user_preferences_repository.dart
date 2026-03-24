import 'package:healthy_fitness_pro/shared/entities/input_user_infomation.dart';

abstract class UserPreferencesRepository {
  Future<void> saveInputUserInfo(InputUserInfomation input);
  Future<InputUserInfomation?> loadInputUserInfo();
  Future<void> clear();
}
