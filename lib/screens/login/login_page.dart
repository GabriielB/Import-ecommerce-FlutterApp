import 'package:flutter/material.dart';
import './controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _controller = LoginController();

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
                      "Preencha os campos com seus\ndados para fazer login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                  Form(
                    key: _controller.formKey,
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
                              onChanged: _controller.setEmail,
                              validator: _controller.validateEmail,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Digite seu Email: ',
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(51, 102, 102, 1),
                                      height: 0.07)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                              onChanged: _controller.setPassword,
                              validator: _controller.validatePassword,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Digite sua senha: ',
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(51, 102, 102, 1),
                                      height: 0.07)),
                              obscureText: true,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () async {
                                  if (await _controller.handleLogin(context)) {
                                    Navigator.pushReplacementNamed(
                                        context, '/home');
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("Erro ao fazer login")));
                                  }
                                },
                                child: const Text('Login')),
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
