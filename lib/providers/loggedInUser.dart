import 'package:flutter/material.dart';

class LoggedInUser extends ChangeNotifier {
  late String _email;

  LoggedInUser(this._email);

  String get email => _email;

  void setEmail(String newEmail) {
    _email = email;
    notifyListeners();
  }
}
