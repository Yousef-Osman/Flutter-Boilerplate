import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question({this.questiontext});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
      child: Text(
        questiontext,
        style: TextStyle(color: Colors.blue[600], fontSize: 20, ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
