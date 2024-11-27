import 'package:flutter/material.dart';
import 'package:onbroading_app/src/login_screen.dart';
import 'package:onbroading_app/src/register_screen.dart';
import 'package:onbroading_app/src/welcome_screen.dart';
import 'package:onbroading_app/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/login' : (context) => const LoginScreen(),
        '/register' : (context) => const RegisterScreen(),
        '/welcome' : (context) => const WelcomeScreen()
      },
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const Scaffold(
        body: WelcomeScreen()
      ),
    );
  }
}
