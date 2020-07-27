import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './finance/transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New shoes', amount: 69.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'Socks', amount: 16.00, date: DateTime.now())
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My sheep had run amok')
        ),
        body: Column(
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
            Card(
              elevation: 50,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.purple,
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Title'
                      ),
                      onChanged: (value) {
                        print(titleController.text);
                      },
                    ),
                    TextField(
                      cursorColor: Colors.purple,
                      controller: amountController,
                      decoration: InputDecoration(
                        labelText: 'Amount'
                      ),
                      onChanged: (value) {

                      },
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                      onPressed: () {
                      },
                    )
                  ],
                )
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple, 
                          width: 2
                        )
                      ),
                      padding: EdgeInsets.all(10),

                      child: Text(
                        '\$ ${tx.amount}', //string interpolation,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          // DateFormat('dd/MM/yyyy').format(tx.date),
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                  )
                );
              }).toList(),
            )
          ],
        ),
        
        
        
        
      ),
    );
  }
}