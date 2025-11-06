import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../widgets/primary_button.dart';

class ResultScreen extends StatelessWidget {
  final String playerName;
  final int score;
  final int total;

  const ResultScreen({
    super.key,
    required this.playerName,
    required this.score,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat, $playerName!",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF512DA8),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Skor kamu: $score dari $total",
                style: const TextStyle(fontSize: 20, color: Colors.black54),
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                text: "Main Lagi",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
