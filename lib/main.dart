import 'package:flutter/material.dart';
import 'package:quizapp/widgets/Quiz/Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Quiz"),
          ),
          body: Quiz()
      ),
    );
  }
}

