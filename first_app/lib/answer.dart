import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleEvent;
  final String answerText;

  Answer(this.handleEvent, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
