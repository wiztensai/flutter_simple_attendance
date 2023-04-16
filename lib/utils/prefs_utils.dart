import 'package:shared_preferences/shared_preferences.dart';

class PrefsUtils {
  static const String _IS_LOGIN = 'IS_LOGIN';

  static Future<bool> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    var res = prefs.getBool(_IS_LOGIN) ?? false;
    return res;
  }

  static Future<void> setLogin(bool isLogin) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_IS_LOGIN, isLogin);
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
