class AbsensiQuery {
  static const String TABLE_NAME = 'absensi';
  static const String CREATE_TABLE =
      'CREATE TABLE IF NOT EXISTS $TABLE_NAME (id INTEGER PRIMARY KEY, username TEXT, latitude TEXT, longitude TEXT, time_checkin INTEGER, time_checkout INTEGER, photo TEXT, check_type TEXT)';
}
