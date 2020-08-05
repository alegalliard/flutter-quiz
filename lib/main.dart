import 'package:flutter/material.dart';
import 'package:max/finance/models/transaction.dart';
import 'package:max/finance/widgets/new_transaction.dart';

import 'finance/widgets/transaction_list.dart';
// import 'package:max/finance/widgets/user_transactions.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


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

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (_){
      return GestureDetector(
        child: NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
        onTap: () {}
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My sheep had run amok'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddNewTransaction(context)
              ,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround, //esse é o tipo o flex do flutter
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart'),
                  elevation: 5,
                ),
              ),
              TransactionList(_userTransaction)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewTransaction(context),
        ),
    );
  }
}