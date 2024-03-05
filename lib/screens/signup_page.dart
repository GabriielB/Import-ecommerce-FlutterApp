import 'package:flutter/material.dart';

import '../users.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
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
                      "Crie sua conta",
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
                      "Preencha os campos com seus\ndados para fazermos seu cadastro",
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
                          onChanged: (value) => _name = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              'Seu nome não pode ficar vazio';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: 'Digite seu nome: '),
                        ),
                        TextFormField(
                          onChanged: (value) => _username = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              'Seu usuário não pode ficar vazio';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: 'Digite seu username: '),
                        ),
                        TextFormField(
                          onChanged: (value) => _password = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              'Sua senha não pode ficar vazia';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: 'Digite sua senha: '),
                          obscureText: true,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                User newUser =
                                    User(_name, _username, _password);
                                users.add(newUser);
                                Navigator.pushReplacementNamed(
                                    context, '/login');
                              }
                            },
                            child: const Text('Crie sua conta'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
