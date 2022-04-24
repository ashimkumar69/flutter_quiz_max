import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 10},
        {'text': 'Yellow', 'score': 15},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 6},
        {'text': 'Bird', 'score': 10},
        {'text': 'Parrot', 'score': 15},
      ]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 5},
        {'text': 'Jon', 'score': 6},
        {'text': 'Smith', 'score': 10},
        {'text': 'Doe', 'score': 15},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter App'),
      ),
      body: _questionsIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionsIndex: _questionsIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
