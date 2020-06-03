import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/models/Question.dart';
import 'package:quizapp/widgets/Quiz/components/QuestionAnswers.dart';
import 'package:quizapp/widgets/Quiz/components/QuestionTitle.dart';

class Quiz extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  //TODO Transform this into an actual Question class
  static Question firstQuestion =
      Question("Qual o terceiro mês do ano?", ['Abril', 'Maio', 'Março']);

  static Question secondQuesion =
      Question("Quantos dias um ano bissexto possui?", ["364", "365", "366"]);

  static Question thirdQuestion = Question(
      "1kg de pedras é mais pesado\ndo que 1kg de papel?",
      ['Claro!?', "Depende...", "Não!!"]);

  var answers = [];

  var shownQuestion = firstQuestion;

  var questionNumber = 1;

  var _isBackButtonVisible = false;

  void onAnswerSelected() {
    setState(() {
      if (shownQuestion == firstQuestion) {
        shownQuestion = secondQuesion;
        _isBackButtonVisible = true;
      } else {
        shownQuestion = thirdQuestion;
        _isBackButtonVisible = true;
      }
    });
  }

  void onBackPressed() {
    setState(() {
      if (shownQuestion == secondQuesion) {
        shownQuestion = firstQuestion;
        _isBackButtonVisible = false;
      } else {
        shownQuestion = secondQuesion;
        _isBackButtonVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        //Question title
        QuestionTitle(shownQuestion.question),

        //Question answers
        QuestionAnswers(shownQuestion.answers, onAnswerSelected),

        //Back button
        Visibility(
          visible: _isBackButtonVisible,
          child: RaisedButton(
            child: Text("Voltar para última pergunta"),
            onPressed: onBackPressed
          ),
        )
      ],
    );
  }
}
