import 'package:flutter/material.dart';

class LoggedInUser extends ChangeNotifier {
  late String _username;

  LoggedInUser(this._username);

  String get username => _username;

  void setUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }
}

