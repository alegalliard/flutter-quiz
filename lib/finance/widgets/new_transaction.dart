import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    //widget. permite acessar as propriedades e métodos do widget dentro do state
    widget.addTx(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }
  
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 50,
        child: Container(
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                onSubmitted: (_) => submitData(),
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
                onSubmitted: (_) => submitData(),
                keyboardType: TextInputType.number,
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
                onPressed: submitData,
              )
            ],
          )
        ),
      );
                  
  }
}