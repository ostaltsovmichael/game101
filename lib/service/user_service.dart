import 'package:account_entry/db/db_helper.dart';

import '../model/user.dart';

class UserService {
  final DbHelper dbHelper = DbHelper.instance;

  late final _userTableName = dbHelper.userTableName;
  late final _userNameTableName = dbHelper.userNameTableName;
  late final _userPointTableName = dbHelper.userPointTableName;

  void createUser(String name) async {
    final db = await dbHelper.db;

    await db.insert(_userTableName, {
      _userNameTableName: name,
      _userPointTableName: 0,
    });
  }

  Future<List<User>> getAllUsers() async {
    final db = await dbHelper.db;
    final data = await db.query(_userTableName);
    List<User> users = data
        .map(
          (e) => User(
            id: e["id"] as int,
            name: e["name"] as String,
            point: e["point"] as int,
          ),
        )
        .toList();
   // users.sort((a,b)=>a.point.compareTo(a.point));

    for (var i in users){
    //  users.sort((a,b)=>a.point.compareTo(a.point));
      print(i.name);
    }
    return users;
  }

  void updatePointById(int id, int point) async {
    final db = await dbHelper.db;
    await db.update(
      _userTableName,
      {_userPointTableName: point},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> lengId() async {
    final db = await dbHelper.db;
    final data = await db.query(_userTableName);
    int id = data.length;
    return id;
  }

  void deleteUserById(int id) async {
    final db = await dbHelper.db;
    await db.delete(_userTableName, where: 'id = ?', whereArgs: [id]);
  }

  void deleteAll() async {
    final db = await dbHelper.db;
    await db.delete(_userTableName);
  }

  Future<void> closeDb() async {
    final db = await dbHelper.db;
    await db.close();
  }
}
