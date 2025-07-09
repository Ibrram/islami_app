import 'package:flutter/material.dart';
import 'package:islami_app_task/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF202020),
      ),
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
