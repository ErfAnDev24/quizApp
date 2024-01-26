import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Text('ERfAn'),
      ),
    );
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
