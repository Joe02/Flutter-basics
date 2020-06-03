import 'package:flutter/cupertino.dart';
import 'package:quizapp/models/Question.dart';

class QuestionTitle extends StatelessWidget {
  final Question shownQuestion;

  QuestionTitle(this.shownQuestion);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(shownQuestion.question,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ));
  }
}