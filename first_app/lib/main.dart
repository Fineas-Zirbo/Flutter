import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _questions = const [
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
  var _qIndex = 0;

  void _answerQ() {
    setState(() {
      _qIndex++;
      // print("questions");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Myapp'),
          ),
          body: _qIndex < _questions.length
              ? Quiz(
                  answerQ: _answerQ,
                  questions: _questions,
                  qIndex: _qIndex,
                )
              : Result()),
    );
  }
}
