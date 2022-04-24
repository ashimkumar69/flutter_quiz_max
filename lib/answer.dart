import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;

  const Answer(this.answerHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: answerHandler,
      ),
    );
  }
}
