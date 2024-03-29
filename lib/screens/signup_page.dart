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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromRGBO(51, 102, 102, 0.7)),
                                    borderRadius: BorderRadius.circular(40))),
                            child: TextFormField(
                              onChanged: (value) => _name = value,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  'Seu nome não pode ficar vazio';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Digite seu nome: ',
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(51, 102, 102, 1),
                                      height: 0.07)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromRGBO(51, 102, 102, 0.7)),
                                    borderRadius: BorderRadius.circular(40))),
                            child: TextFormField(
                              onChanged: (value) => _username = value,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  'Seu usuário não pode ficar vazio';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Digite seu username: ',
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(51, 102, 102, 1),
                                      height: 0.07)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromRGBO(51, 102, 102, 0.7)),
                                    borderRadius: BorderRadius.circular(40))),
                            child: TextFormField(
                              onChanged: (value) => _password = value,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  'Sua senha não pode ficar vazia';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Digite sua senha: ',
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(51, 102, 102, 1),
                                      height: 0.07)),
                              obscureText: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    User newUser =
                                        User(_name, _username, _password);
                                    users.add(newUser);
                                    Navigator.pushReplacementNamed(
                                        context, '/login');
                                  }
                                },
                                child: const Text('Crie sua conta')),
                          ),
                        )
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
