import 'package:absensi_nanang/features/register/domains/user_model.dart';
import 'package:absensi_nanang/features/register/data/user_query.dart';
import 'package:absensi_nanang/utils/db_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepos {
  DbUtils dbUtils = DbUtils();
  final String USERNAME = 'USERNAME';

  Future<bool> checkLogin(String username, String pwd) async {
    final db = await dbUtils.openDb();
    List<Map<String, dynamic>> result = await db.query(UserQuery.TABLE_NAME,
        where: 'username = ? AND password = ?',
        whereArgs: [username, pwd],
        limit: 1);

    if (result.isEmpty) {
      return false;
    } else {
      await setUsername(UserModel.fromJson(result.first));
      return true;
    }
  }

  Future<String> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    var res = prefs.getString(USERNAME) ?? '';
    return res;
  }

  Future<void> setUsername(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(USERNAME, user.username);
  }
}
