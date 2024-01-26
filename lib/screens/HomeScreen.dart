import 'package:flutter/material.dart';
import 'package:quiz/screens/QuestionsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getMainContent(context),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    title: Text('Quiz game'),
    backgroundColor: Colors.blue,
    centerTitle: true,
    foregroundColor: Colors.white,
  );
}

Widget getMainContent(BuildContext context) {
  return SafeArea(
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(width: double.infinity),
      SizedBox(
        height: 30,
      ),
      Container(
        width: 300,
        height: 300,
        child: Image(
          image: AssetImage('images/welcome.png'),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => QuestionScreen(),
            ),
          );
        },
        child: Text('Start!'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
    ]),
  );
}
