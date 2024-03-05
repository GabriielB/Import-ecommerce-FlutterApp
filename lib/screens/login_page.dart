import 'package:flutter/material.dart';
import '../users.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/background3.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 66, right: 32, left: 32, bottom: 16),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset(
                      'lib/assets/aviao_logo.png',
                      width: 80,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Insira seus dados \npara realizar o login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            onChanged: (value) => _username = value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor preencha o campo de nome do usuário';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelText: 'Digite seu username'),
                          ),
                          TextFormField(
                            onChanged: (value) => _password = value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor preencha o campo de senha';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelText: "Digite sua senha"),
                            obscureText: true,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  bool userExists = users.any((user) =>
                                      user.username == _username &&
                                      user.password == _password);
                                  if (userExists) {
                                    Navigator.pushReplacementNamed(
                                        context, '/products',
                                        arguments: _username);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Usuário ou senha incorretos")));
                                  }
                                }
                              },
                              child: const Text('Login'))
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
