import 'package:flutter/material.dart';
import '../utils/question_data.dart';
import '../widgets/question_card.dart';
import '../widgets/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  int score = 0;

  void _answerQuestion(int index) {
    if (index == questions[currentIndex].correctIndex) {
      score++;
    }
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      Navigator.pushReplacementNamed(
        context,
        '/result',
        arguments: {'score': score, 'total': questions.length},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, $userName 👋"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            QuestionCard(questionText: question.questionText),
            const SizedBox(height: 20),
            ...List.generate(
              question.answers.length,
              (index) => AnswerButton(
                text: question.answers[index],
                onPressed: () => _answerQuestion(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
