import '../models/question.dart';

final List<Question> questions = [
  Question(
    text: "Apa ibu kota Indonesia?",
    answers: [
      Answer(text: "Jakarta", isCorrect: true),
      Answer(text: "Bandung", isCorrect: false),
      Answer(text: "Surabaya", isCorrect: false),
      Answer(text: "Medan", isCorrect: false),
    ],
  ),
  Question(
    text: "Siapa pencipta Flutter?",
    answers: [
      Answer(text: "Google", isCorrect: true),
      Answer(text: "Microsoft", isCorrect: false),
      Answer(text: "Apple", isCorrect: false),
      Answer(text: "Meta", isCorrect: false),
    ],
  ),
  Question(
    text: "Bahasa pemrograman Flutter adalah?",
    answers: [
      Answer(text: "Dart", isCorrect: true),
      Answer(text: "Kotlin", isCorrect: false),
      Answer(text: "Swift", isCorrect: false),
      Answer(text: "Java", isCorrect: false),
    ],
  ),
];
