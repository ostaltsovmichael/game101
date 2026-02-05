import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Database? _db;
  static DbHelper instance = DbHelper._constructor();

  final String _userTableName = 'users';
  final String _userIdTableName = 'id';
  final String _userNameTableName = 'name';
  final String _userPointTableName = 'point';

  String get userTableName => _userTableName;

  String get userIdTableName => _userIdTableName;

  String get userNameTableName => _userNameTableName;

  String get userPointTableName => _userPointTableName;

  DbHelper._constructor();

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }
}

Future<Database?> getDatabase() async {
  const String dbName = 'game_one_hundred_one.db';
  final databaseDirPath = await getDatabasesPath();
  final dbPath = join(databaseDirPath, dbName);

  final database = openDatabase(
    dbPath,
    version: 1,
    onCreate: (db, version) {
      db.execute('''
CREATE TABLE ${DbHelper.instance._userTableName} (
${DbHelper.instance._userIdTableName} INTEGER PRIMARY KEY,
${DbHelper.instance._userNameTableName} TEXT NOT NULL,
${DbHelper.instance._userPointTableName} INTEGER NOT NULL
)
''');
    },
  );
  return database;
}
