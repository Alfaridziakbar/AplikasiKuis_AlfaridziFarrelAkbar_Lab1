import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/primary_button.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();

  void startQuiz() {
    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Masukkan nama terlebih dahulu!')),
      );
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuizScreen(playerName: nameController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Logo.png', height: 180),
                const SizedBox(height: 40),
                const Text(
                  "Selamat Datang di Kuis Pengetahuan Umum!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF512DA8),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: nameController,
                  hintText: "Masukkan nama kamu...",
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  text: "Mulai Kuis",
                  onPressed: startQuiz,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
