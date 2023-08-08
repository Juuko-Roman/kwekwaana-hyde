import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthManager {
  static const _boxName = 'userBox';
  static const _loggedInKey = 'loggedIn';

  // Initialize Hive box for user data
  static Future<void> initHive() async {
    await Hive.openBox('userBox');
  }

  // Check if a user is already logged in
  static bool isUserLoggedIn() {
    final userBox = Hive.box(_boxName);
    return userBox.get(_loggedInKey, defaultValue: false);
  }

  // Mark user as logged in
  static Future<void> loginUser() async {
    final userBox = Hive.box(_boxName);
    await userBox.put(_loggedInKey, true);
  }

  // Mark user as logged out
  static Future<void> logoutUser() async {
    final userBox = Hive.box(_boxName);
    await userBox.put(_loggedInKey, false);
  }
}
