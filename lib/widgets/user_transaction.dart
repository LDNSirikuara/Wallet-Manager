import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import './../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Bag',
      amount: 2500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 4000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Rice',
      amount: 250,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Pizza',
      amount: 2900,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Pizza',
      amount: 2900,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Pizza',
      amount: 2900,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Pizza',
      amount: 2900,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
