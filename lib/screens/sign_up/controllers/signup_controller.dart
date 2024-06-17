import 'package:al_imports/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de nome';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor preencha o campo de Email';
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

  void setName(String name) {
    nameController.text = name;
  }

  void setEmail(String email) {
    emailController.text = email;
  }

  void setPassword(String password) {
    passwordController.text = password;
  }

  Future<bool> handleSignUp(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      String? errorMessage = await _authService.signupUser(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
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
}
