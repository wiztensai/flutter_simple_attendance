import 'package:absensi_nanang/features/check_in/domain/absensi_model.dart';
import 'package:absensi_nanang/features/check_in/data/absensi_query.dart';
import 'package:absensi_nanang/utils/db_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

double? latitude;
double? longitude;

class CheckInRepos {
  final _dbUtils = DbUtils();
  final String _LAST_CHECKIN_TIME = 'LAST_CHECKIN_TIME';

  Future<int> getLastCheckin() async {
    final prefs = await SharedPreferences.getInstance();
    var res = prefs.getInt(_LAST_CHECKIN_TIME) ??
        DateTime.now().millisecondsSinceEpoch;
    return res;
  }

  Future<void> setLastCheckin(int millis) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_LAST_CHECKIN_TIME, millis);
  }

  Future<List<AbsensiModel>> getAbsensi(String username) async {
    final db = await _dbUtils.openDb();

    List<Map<String, dynamic>> result = await db.query(AbsensiQuery.TABLE_NAME,
        where: 'username = ?', whereArgs: [username], orderBy: 'id DESC');

    List<AbsensiModel> absensi = [];
    for (var r in result) {
      absensi.add(AbsensiModel.fromJson(r));
    }
    return absensi;
  }

  Future<bool> checkIn(
      {required String username, required String photo}) async {
    final checkInTime = DateTime.now().millisecondsSinceEpoch;
    final data = AbsensiModel(
            username: username,
            latitude: latitude.toString(),
            longitude: longitude.toString(),
            time_checkin: checkInTime,
            time_checkout: 0,
            photo: photo,
            check_type: AbsensiModel.TYPE_CHECKIN)
        .toJson();
    final res = await _dbUtils.insert(AbsensiQuery.TABLE_NAME, data);

    await setLastCheckin(checkInTime);

    return res;
  }

  Future<bool> checkOut(
      {required String username, required String photo}) async {
    final lastCheckInTime = await getLastCheckin();
    final checkOutTime = DateTime.now().millisecondsSinceEpoch;

    final data = AbsensiModel(
            username: username,
            latitude: latitude.toString(),
            longitude: longitude.toString(),
            time_checkin: lastCheckInTime,
            time_checkout: checkOutTime,
            photo: photo,
            check_type: AbsensiModel.TYPE_CHECKOUT)
        .toJson();
    final res = await _dbUtils.insert(AbsensiQuery.TABLE_NAME, data);

    return res;
  }
}
