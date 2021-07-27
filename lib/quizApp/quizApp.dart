import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(String answer) {
    if(answer == _questions[_questionIndex]['Correct']){
      _score +=1;
    }

    setState(() {
      _questionIndex += 1;
    });
  }

  void _restartTest() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  List<Map<String, Object>> _questions = [
    {
      'Question': 'What is the longest river in the world?',
      'Answers': [
        'a) Amazon',
        'b) Congo',
        'c) Nile',
        'd) Hudson',
      ],
      'Correct': 'c) Nile',
    },
    {
      'Question': 'Which Olympic sport is Michael Phelps known for?',
      'Answers': [
        'a) Snowboarding',
        'b) Skiing',
        'c) Running',
        'd) Swimming',
      ],
      'Correct': 'd) Swimming',
    },
    {
      'Question': 'Which planet in our solar system is the largest?',
      'Answers': [
        'a) Jupiter',
        'b) Saturn',
        'c) Neptune',
        'd) Earth',
      ],
      'Correct': 'a) Jupiter',
    },
    {
      'Question': 'Which ocean is the largest?',
      'Answers': [
        'a) Indian',
        'b) Pacific',
        'c) Atlantic',
        'd) Arctic',
      ],
      'Correct': 'b) Pacific',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return (_questionIndex < _questions.length) ? nextQuestion() : getResult();
  }

  Widget nextQuestion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(questiontext: _questions[_questionIndex]['Question']),
        ...getAnsers(),
      ],
    );
  }

  Widget getResult() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Score is $_score/4"),
          TextButton(
            onPressed: _restartTest,
            child: Text('Restart Test'),
          )
        ],
      ),
    );
  }

  List<Widget> getAnsers() {
    return (_questions[_questionIndex]['Answers'] as List<String>)
        .map(
            (answer) => Answer(answerQuestion: () => _answerQuestion(answer), answer: answer))
        .toList();
  }
}
