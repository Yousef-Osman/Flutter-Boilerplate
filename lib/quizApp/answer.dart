import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function answerQuestion;
  final String answer;

  Answer({this.answerQuestion, this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Padding(padding: EdgeInsets.symmetric(vertical: 13), child: Text(answer)),
      ),
    );
  }
}
