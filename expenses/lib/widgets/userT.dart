import 'package:flutter/material.dart';

import '/widgets/list.dart';
import '/widgets/inputT.dart';
import '../models/transaction.dart';

class UserT extends StatefulWidget {
  @override
  State<UserT> createState() => _UserTState();
}

class _UserTState extends State<UserT> {
  final List<Transaction> _transactions = [];
  int tid = 1;
  void _addNewT(String name, double amount) {
    final newT = Transaction(
        name: name, amount: amount, date: DateTime.now(), id: tid++);

    setState(() {
      _transactions.add(newT);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[InputT(_addNewT), TList(_transactions)],
    );
  }
}
