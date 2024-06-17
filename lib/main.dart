import 'package:al_imports/providers/cart_provider.dart';
import 'package:al_imports/providers/loggedInUser.dart';
import 'package:al_imports/screens/welcome/welcome_page.dart';
import 'package:al_imports/screens/login/login_page.dart';
import 'package:al_imports/screens/home/home_page.dart';
import 'package:al_imports/screens/sign_up/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CartProvider()),
          ChangeNotifierProvider(create: (_) => LoggedInUser(''))
        ],
        child: MaterialApp(
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
            '/home': (context) =>
                HomePage(email: Provider.of<LoggedInUser>(context).email),
          },
        ),
      );
}
