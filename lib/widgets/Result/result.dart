import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/main.dart';

class Result extends StatelessWidget {
  final List answers;
  var score = 0;

  Result(this.answers);

  @override
  Widget build(BuildContext context) {
    if (answers[0] == "Março") {
      score += 33;
    }
    if (answers[1] == "366") {
      score += 33;
    }
    if (answers[2] == "Não!!") {
      score += 33;
    }

    if (score == 99) {
      score = 100;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quiz"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Você acertou $score% do Quiz.",
                  style: TextStyle(fontSize: 19)),
            ),
            RaisedButton(
              child: Text("Refazer o Quiz", style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
