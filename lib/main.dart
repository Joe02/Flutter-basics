import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Transform this into a Question class
    final questionList = [
      "Qual o terceiro mês do ano?",
      "Quantos dias um ano bissexto possui?",
      "1kg de pedras é mais pesado do que 1kg de papel?"
    ];

    final firstQuestionAnswers = [
      "Abril",
      "Maio",
      "Março"
    ];

    final secondQuestionAnswers = [
      "364",
      "365",
      "366"
    ];

    final thirdQuestionAnswers = [
      "Claro!?",
      "Depende...",
      "Não. Claro que não!"
    ];

    var answers = [];

    var shownQuestions = [];
    shownQuestions = firstQuestionAnswers;

    var questionNumber = 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pergunta #$questionNumber"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(questionList[(questionNumber)-1], style: TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold)),
                )),
            Flexible(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  children: new List.generate(
                      shownQuestions.length,
                          (index) =>
                          RaisedButton(
                            child: Text(shownQuestions[index]),
                            onPressed: () {
                              print("Objeto $index clicado");
                            },
                          )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

