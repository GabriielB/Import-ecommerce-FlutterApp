import 'package:flutter/material.dart';
import '../../../models/users.dart';

class SignUpController {
  late String _nome;
  late String _username;
  late String _password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de nome';
    }
    return null;
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de username';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de senha';
    }
    return null;
  }

  bool handleSignUp() {
    bool userNotExists = true;
    if (formkey.currentState!.validate()) {
      userNotExists = users.every((user) => user.username != _username);
      if (userNotExists) {
        users.add(User(
          _nome,
          _username,
          _password,
        ));
        return true;
      }
    }
    return false;
  }


  void setName(String name) {
    _nome = name;
  }

  void setUsername(String username) {
    _username = username;
  }

  void setPassword(String password) {
    _password = password;
  }
}
