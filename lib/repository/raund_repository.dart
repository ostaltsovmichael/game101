import 'package:flutter/material.dart';

class RaundRepository extends ChangeNotifier {
  int _raund = 1;
  int get raund => _raund;

  void incrementRaund() {
    _raund = raund + 1;
    notifyListeners();
  }

  void dropRaunds() {
    _raund = 1;
    notifyListeners();
  }
}
