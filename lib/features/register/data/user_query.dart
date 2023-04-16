class UserQuery {
  static const String TABLE_NAME = 'user';
  static const String CREATE_TABLE =
      'CREATE TABLE IF NOT EXISTS $TABLE_NAME (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT)';
}
