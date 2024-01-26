import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  int correctAnswer = 0;

  ResultPage(int correctAnswer) {
    this.correctAnswer = correctAnswer;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello Results $correctAnswer'),
      ),
    );
  }
}
