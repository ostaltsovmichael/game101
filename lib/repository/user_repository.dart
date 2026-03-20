import 'package:account_entry/service/user_service.dart';

import 'package:flutter/material.dart';

import '../model/user.dart';

class UserRepository extends ChangeNotifier {
  final UserService _userService = UserService();

  void createUser(String name) async {
    try {
      final allUsers = await _userService.getAllUsers();
      
      

  int lengUsers = allUsers.length;
    
      if (lengUsers < 6) {
        _userService.createUser(name);
      } else {
        _userService.deleteUserById(lengUsers + 1);
      }
    } catch (e) {
      print('Не удалось подключить всех пользовотелей $e');
    }

    notifyListeners();
  }

Future<List<User> >getAllUser() async {
    final data =  await _userService.getAllUsers();

    //data.sort((a,b)=>a.point.compareTo(a.point));
    print(data);
    //notifyListeners();
    return data;
  }

  void updatePointById(int id, int point) {
    _userService.updatePointById(id, point);

    if (point == 101) {
      _userService.updatePointById(id, 0);
      notifyListeners();
    } else if (point == 100) {
      _userService.updatePointById(id, 50);
      notifyListeners();
    }
    notifyListeners();
  }

  void allPointsZero() async {
    final data = await _userService.getAllUsers();
    for (int i = data[0].id; i <= data.length; i++) {
      _userService.updatePointById(i, 0);
      notifyListeners();
    }
  }

  Future<int> lengId() async {
    int id = await _userService.lengId();
    return id;
  }

  void deleteUsers(int id) {
    _userService.deleteUserById(id);
    notifyListeners();
  }

  void daleteAll() {
    print('object');
    _userService.deleteAll();
    // notifyListeners();
  }

  void closeDb() {
    _userService.closeDb();
  }
}
