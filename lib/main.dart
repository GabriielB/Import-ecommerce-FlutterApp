import 'package:al_imports/screens/home_page.dart';
import 'package:al_imports/screens/login_page.dart';
import 'package:al_imports/screens/products_page.dart';
import 'package:al_imports/screens/signup_page.dart';
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
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/products': (context) => ProductsPage(
            username: ModalRoute.of(context)!.settings.arguments as String)
      },
    );
  }
}
