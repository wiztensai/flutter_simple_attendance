import 'package:absensi_nanang/features/check_in/data/absensi_query.dart';
import 'package:absensi_nanang/features/register/data/user_query.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbUtils {
  static DbUtils _dbHelper = DbUtils._singleton();

  factory DbUtils() {
    return _dbHelper;
  }

  DbUtils._singleton();

  final tables = [UserQuery.CREATE_TABLE, AbsensiQuery.CREATE_TABLE];

  Future<Database> openDb() async {
    final database = openDatabase(join(await getDatabasesPath(), 'absensi.db'),
        onCreate: (db, version) async {
      for (var table in tables) {
        await db.execute(table).then((value) {
          print('Create table $table success');
        }).onError((error, stackTrace) {
          print('Create table $table error: $error');
        });
      }
    }, version: 1);

    return database;
  }

  Future<bool> insert(String table, Map<String, dynamic> data) async {
    return await openDb().then((db) async {
      final res = await db.insert(table, data,
          conflictAlgorithm: ConflictAlgorithm.replace);
      if (res == 0) {
        return false;
      } else {
        return true;
      }
    }).catchError((err) {
      print("Insert data error: $err");
      return false;
    });
  }

  Future<List> getData(String tableName) async {
    final db = await openDb();
    var result = await db.query(tableName);
    return result.toList();
  }
}
