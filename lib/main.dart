import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Question {
  String question;
  var answers = [];

  Question(String question, List answers) {
    this.question = question;
    this.answers = answers;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Transform this into an actual Question class
    var firstQuestion = Question(
        "Qual o terceiro mês do ano?",
        ['Abril', 'Maio', 'Março']
    );

    var secondQuesion = Question(
        "Quantos dias um ano bissexto possui?",
        ["364","365","366"]
    );

    var thirdQuestion = Question(
      "1kg de pedras é mais pesado do que 1kg de papel?",
      ['Claro!?',"Depende...","Não!!"]
    );


    var answers = [];

    var shownQuestion = firstQuestion;

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
                  child: Text(shownQuestion.question, style: TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold)),
                )),
            Flexible(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  children: new List.generate(
                      shownQuestion.answers.length,
                          (index) =>
                          RaisedButton(
                            child: Text(shownQuestion.answers[index]),
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

