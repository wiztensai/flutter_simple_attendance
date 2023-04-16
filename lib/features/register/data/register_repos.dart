import 'package:absensi_nanang/features/register/data/user_query.dart';
import 'package:absensi_nanang/utils/db_utils.dart';

class RegisterRepos {
  DbUtils dbUtils = DbUtils();

  /**reqs:
   * username tidak boleh sama
   */
  Future<bool> checkRegister(String username) async {
    final db = await dbUtils.openDb();
    List<Map> result = await db.query(UserQuery.TABLE_NAME,
        where: 'username = ?', whereArgs: [username], limit: 1);

    if (result.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
