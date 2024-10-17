import 'package:flutter/material.dart';
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
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const Scaffold(
        body: WelcomeScreen()
      ),
    );
  }
}
