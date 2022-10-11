import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void answerQ() {
    setState(() {
      qIndex++;
      // print("questions");
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'qText': 'what\'s your fav soda',
        'aText': ['Cola', 'Fanta', 'Sprite'],
      },
      {
        'qText': 'what\'s your fav color',
        'aText': ['Blue', 'Red', 'Green'],
      },
      {
        'qText': 'what\'s your fav animal',
        'aText': ['Horse', 'Dog', 'Cat']
      },
    ];

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Myapp'),
        ),
        body: Column(children: [
          Question(
            questions[qIndex]['qText'] as String,
          ),
          ...(questions[qIndex]['aText'] as List<String>).map(
            (e) => Answer(answerQ, e),
          )
        ]),
      ),
    );
  }
}
