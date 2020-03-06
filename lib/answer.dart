import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText); // constructor

  @override
  Widget build(BuildContext context) {
    var _mainColor = Color.fromARGB(100, 40, 70, 250);
    return Container (
      width: double.infinity,
      margin: EdgeInsets.only(left:20, right:20),
      child: RaisedButton(
        child: Text( answerText),
        color: _mainColor,
        textColor: Color.fromARGB(500, 255, 255, 255),
        onPressed: selectHandler,
        
      )
    );
  }
}