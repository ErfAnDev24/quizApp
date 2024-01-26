import 'package:flutter/material.dart';
import 'package:quiz/screens/ResultPage.dart';
import 'package:quiz/screens/dao/data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questions = getQuestions();
  int shownQuestionNumber = 0;
  int correctNumbers = 0;
  bool showingResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(shownQuestionNumber, getQuestions().length),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Container(
            width: 270,
            height: 270,
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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
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
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  if (questions[shownQuestionNumber].correctAnswer == index &&
                      !showingResult) {
                    correctNumbers++;
                  }

                  if (shownQuestionNumber == questions.length - 1) {
                    showingResult = true;
                    return;
                  }

                  if (shownQuestionNumber != questions.length - 1 &&
                      !showingResult) {
                    shownQuestionNumber++;
                  }
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          if (showingResult)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ResultPage(correctNumbers),
                  ),
                );
              },
              child: Text('Show Results!'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
        ],
      ),
    );
  }
}

PreferredSizeWidget getAppBar(int current, int total) {
  return AppBar(
    title: Text('Quection ${current + 1} / $total'),
    backgroundColor: Colors.blue,
    centerTitle: true,
    foregroundColor: Colors.white,
  );
}
