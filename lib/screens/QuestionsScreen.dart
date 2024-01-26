import 'package:flutter/material.dart';
import 'package:quiz/screens/dao/data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questions = getQuestions();
  int shownQuestionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              width: 300,
              height: 300,
              child: Image(
                image: AssetImage(
                    'images/${questions[shownQuestionNumber].imageNumber}.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${questions[shownQuestionNumber].title}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ...List.generate(
              4,
              (index) => ListTile(
                title: Text(
                  '${questions[shownQuestionNumber].answerList![index]} (${index + 1}',
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ));
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    title: Text('Questions'),
    backgroundColor: Colors.blue,
    centerTitle: true,
    foregroundColor: Colors.white,
  );
}
