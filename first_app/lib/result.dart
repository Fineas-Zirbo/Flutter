import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 120),
        child: Column(
          children: [
            Text(
              'All done',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: Text('Restart Quiz'),
              onPressed: resetHandler,
            )
          ],
        ),
      ),
    );
  }
}
