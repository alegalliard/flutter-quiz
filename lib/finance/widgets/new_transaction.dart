import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(enteredTitle, enteredAmount);
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