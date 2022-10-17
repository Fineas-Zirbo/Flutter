import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQ;
  final int qIndex;

  Quiz({required this.questions, required this.answerQ, required this.qIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[qIndex]['qText'] as String,
      ),
      ...(questions[qIndex]['aText'] as List<String>).map(
        (e) => Answer(answerQ, e),
      )
    ]);
  }
}
