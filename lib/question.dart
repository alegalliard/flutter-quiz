import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //this tell Darts that this value will never change

  Question(this.questionText); //constructor - short form with one argument
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
          questionText,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )
    );
  }
}