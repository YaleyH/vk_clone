import 'package:flutter/material.dart';
import 'package:vk_app/pages/auth_page.dart';
import 'package:vk_app/pages/code_verifacation.dart';
import 'package:vk_app/pages/home_page.dart';
import 'package:vk_app/pages/main_page.dart';
import 'package:vk_app/pages/password_page.dart';
import 'package:vk_app/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/auth' : (context) => const AuthorizationPage(),
        '/registration' : (context) => const RegistrationPage(),
        '/password' : (context) => const PasswordPage(),
        '/main' : (context) => const MainPage(),
      },
    );
  }
}
