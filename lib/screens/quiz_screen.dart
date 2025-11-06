import 'package:flutter/material.dart';
import '../utils/question_data.dart';
import '../widgets/question_card.dart';
import '../widgets/answer_button.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String playerName;
  const QuizScreen({super.key, required this.playerName});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  int score = 0;

  void checkAnswer(bool isCorrect) {
    if (isCorrect) score++;

    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(
            playerName: widget.playerName,
            score: score,
            total: questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pertanyaan ${currentIndex + 1}/${questions.length}",
            style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF7E57C2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionCard(text: question.text),
            const SizedBox(height: 20),
            ...question.answers.map(
              (answer) => AnswerButton(
                text: answer.text,
                onPressed: () => checkAnswer(answer.isCorrect),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
