import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

void main() { //para o flutter, esse é o inicializador
  runApp(MaxApp());
}

class MaxApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaxAppState();
  }
}
//convenção: só um widget por arquivo

class _MaxAppState extends State<MaxApp> {
  var _questionIndex = 0; //comecou con _ é privado

  void answerQuestion() {
    setState(() {
      _questionIndex++;
      
    });
    print(_questionIndex);
  }
  Widget build(BuildContext context) {
    var questions = [
      '1 qual o seu animal favorito',
      '2 qual sua cor favorita',
      '3 qual seu homem favorito',
      '4 qual seu herói favorito',
      '5 qual o seu animal favorito',
      '6 qual sua cor favorita',
      '7 qual seu homem favorito',
      '8 qual seu herói favorito',
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('CHUPA')
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex],),
          RaisedButton(
            child: (
              Text('coruja', style: TextStyle(fontSize: 30))
            ),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('tigre'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('pombo'),
            onPressed: answerQuestion,
          ),
          Btn('goroio')
        ],
      )
    ));
  }
}