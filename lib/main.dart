import 'package:al_imports/screens/welcome/welcome_page.dart';
import 'package:al_imports/screens/login/login_page.dart';
import 'package:al_imports/screens/home/home_page.dart';
import 'package:al_imports/screens/sign_up/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al-Imports',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(51, 102, 102, 1)),
          useMaterial3: true,
          fontFamily: 'Roboto'),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
