import 'package:flutter/material.dart';
import 'package:quizapp/models/Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp> {
  //Transform this into an actual Question class
  static Question firstQuestion = Question(
      "Qual o terceiro mês do ano?",
      ['Abril', 'Maio', 'Março']
  );

  static Question secondQuesion = Question(
      "Quantos dias um ano bissexto possui?",
      ["364","365","366"]
  );

  static Question thirdQuestion = Question(
      "1kg de pedras é mais pesado\ndo que 1kg de papel?",
      ['Claro!?',"Depende...","Não!!"]
  );

  var answers = [];

  var shownQuestion = firstQuestion;

  var questionNumber = 1;

  var _isBackButtonVisible = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pergunta #$questionNumber"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(shownQuestion.question, style: TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                )),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(bottom: 25),
                child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    children: new List.generate(
                        shownQuestion.answers.length,
                            (index) =>
                            RaisedButton(
                              child: Text(shownQuestion.answers[index], style: TextStyle(fontSize: 18),),
                              onPressed: () {
                                setState(() {
                                  answers.add(shownQuestion.answers[index]);
                                  if (shownQuestion == firstQuestion) {
                                    _isBackButtonVisible = true;
                                    shownQuestion = secondQuesion;
                                    questionNumber = 2;
                                  } else if (shownQuestion == secondQuesion){
                                    _isBackButtonVisible = true;
                                    shownQuestion = thirdQuestion;
                                    questionNumber = 3;
                                  } else {
                                    //Add finished quiz screen.
                                  }
                                });
                              },
                            )
                    )
                ),
              ),
            ),
            Visibility(
              visible: _isBackButtonVisible,
              child: RaisedButton(
                child: Text("Voltar para última pergunta"),
                onPressed: () {
                  setState(() {
                    if (shownQuestion == secondQuesion) {
                      answers.removeLast();
                      _isBackButtonVisible = false;
                      shownQuestion = firstQuestion;
                      questionNumber = 1;
                    } else {
                      answers.removeLast();
                      _isBackButtonVisible = true;
                      shownQuestion = secondQuesion;
                      questionNumber = 2;
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

