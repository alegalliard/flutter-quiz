import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:max/finance/models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'New shoes', amount: 69.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'Socks', amount: 16.00, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle, 
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString()
      );

      setState(() {
        _userTransaction.add(newTx);
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}