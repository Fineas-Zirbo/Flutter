import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/actions.dart';

class InputT extends StatelessWidget {
  final Function handleTransaction;
  InputT(this.handleTransaction);
  final title = TextEditingController();
  final amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: title,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amount,
            ),
            TextButton(
              onPressed: () {
                handleTransaction(title.text, double.parse(amount.text));
              },
              child: Text('Submit'),
              style: TextButton.styleFrom(primary: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
