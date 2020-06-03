import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAnswers extends StatelessWidget {
  final List answers;
  final void Function() onSelected;

  QuestionAnswers(this.answers, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            children: new List.generate(
                answers.length,
                    (index) => RaisedButton(
                  child: Text(
                    answers[index],
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: onSelected,
                ))),
      ),
    );
  }

}