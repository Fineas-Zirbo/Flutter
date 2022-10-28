import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TList extends StatelessWidget {
  final List<Transaction> transactions;

  TList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
        return Card(
          child: Row(
            children: <Widget>[
              Text(
                '${e.id}',
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue)),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${e.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    e.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    DateFormat('HH:mm dd.MM.yyyy').format(e.date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
