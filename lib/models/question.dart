
import 'package:flutter/foundation.dart';

class Question {
  final String text;
  final List<String> choices;
  final String answer;

  Question({
    required this.text,
    required this.choices,
    required this.answer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      text: json['questions'] ?? '',
      choices: [
        (json['choice1'] as List).first,
        (json['choice2'] as List).first,
        (json['choice3'] as List).first,
        (json['choice4'] as List).first,
      ],
      answer: (json['answer'] as String).substring(0, 1),
    );
  }
}
