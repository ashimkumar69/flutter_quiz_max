import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final Function answerQuestion;

  const Quiz({
    required this.questions,
    required this.questionsIndex,
    required this.answerQuestion,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionsIndex]['questionText'] as String,
        ),
        ...(questions[questionsIndex]['answer'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          },
        ).toList(),
      ],
    );
  }
}
