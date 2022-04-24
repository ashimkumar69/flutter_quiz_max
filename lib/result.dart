import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result(this.totalScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText = 'Awesome';
    if (totalScore <= 20) {
      resultText = 'Good';
    } else if (totalScore <= 30) {
      resultText = 'Great';
    } else {
      resultText = 'Awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.blue),
          onPressed: resetHandler,
          child: const Text(
            'Reset Quiz',
          ),
        )
      ],
    ));
  }
}
