import 'package:flutter/cupertino.dart';

class QuestionTitle extends StatelessWidget {
  final String question;

  QuestionTitle(this.question);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(question,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ));
  }
}