import 'package:flutter/material.dart';
import '../../../models/users.dart';

class LoginController {
  late String _username;
  late String _password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de nome do usuário';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de senha';
    }
    return null;
  }

  bool handleLogin() {
    if (formKey.currentState!.validate()) {
      bool userExists = users.any(
          (user) => user.username == _username && user.password == _password);
      return userExists;
    }
    return false;
  }

  void setUsername(String username) {
    _username = username;
  }

  void setPassword(String password) {
    _password = password;
  }

  String getUsername() {
    return _username;
  }
}
