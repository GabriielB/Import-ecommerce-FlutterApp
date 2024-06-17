import 'package:al_imports/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginController {
  late String _email;
  late String _password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de email';
    }
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegExp.hasMatch(value)) {
      return 'Por favor insira um Email válido';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de senha';
    }
    if (value.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  void setEmail(String email) {
    _email = email;
  }

  void setPassword(String password) {
    _password = password;
  }

  Future<bool> handleLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      String? errorMessage = await _authService.loginUser(
        email: _email,
        password: _password,
      );
      if (errorMessage == null) {
        return true;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Houve um Erro: $errorMessage")));
        return false;
      }
    }
    return false;
  }

  String getEmail() {
    return _email;
  }
}
