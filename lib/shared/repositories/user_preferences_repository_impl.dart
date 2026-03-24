import 'dart:convert';

import 'package:healthy_fitness_pro/core/services/index.dart';
import 'package:healthy_fitness_pro/shared/entities/input_user_infomation.dart';

import 'user_preferences_repository.dart';

class UserPreferencesRepositoryImpl implements UserPreferencesRepository {
  final SecureStorageService _storage;
  UserPreferencesRepositoryImpl(this._storage);

  static const _keyInputUserInfo = 'input_user_info_v1';

  @override
  Future<void> saveInputUserInfo(InputUserInfomation input) async {
    await _storage.write(_keyInputUserInfo, jsonEncode(input.toJson()));
  }

  @override
  Future<InputUserInfomation?> loadInputUserInfo() async {
    final raw = await _storage.read(_keyInputUserInfo);
    if (raw == null) return null;
    return InputUserInfomation.fromJson(
      jsonDecode(raw) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> clear() => _storage.delete(_keyInputUserInfo);
}
