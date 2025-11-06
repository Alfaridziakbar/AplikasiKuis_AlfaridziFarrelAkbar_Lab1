import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aesthetic Quiz App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9575CD)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3E5F5),
      ),
      home: const HomeScreen(),
    );
  }
}
