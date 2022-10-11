import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleEvent;
  final String answerText;

  Answer(this.handleEvent, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      color: Color.fromARGB(250, 0, 0, 0),
      child: ElevatedButton(
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(
        //         Color.fromARGB(255, 50, 138, 67))),
        onPressed: handleEvent,
        child: Text(answerText),
      ),
    );
  }
}
