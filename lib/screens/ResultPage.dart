import 'package:flutter/material.dart';
import 'package:quiz/screens/HomeScreen.dart';

class ResultPage extends StatelessWidget {
  int correctAnswers = 0;

  ResultPage(int correctAnswers) {
    this.correctAnswers = correctAnswers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Container(
                width: 270,
                height: 270,
                child: Image(
                  image: AssetImage('images/cup.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'your correct numbers is : ',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '$correctAnswers',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ));
  }
}
