import 'package:flutter/material.dart';


void main() {
  runApp(AleApp());
}


class AleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AleAppState();
  }
}


class _AleAppState extends State<AleApp> {
  
  var _questionIndex = 0; // _variavel = private

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override //decorator provided by Dart. Makes code clear and cleaner
  //BuildContext is special object type provided by Flutter

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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Tchururu'), backgroundColor: Color.fromARGB(100, 14, 40, 250), ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Mim aperti'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Mim aperti anonimo'),
              onPressed: () {
                print('Anonima');
              },
            )
          ],
        ),
        
        bottomNavigationBar: BottomAppBar(child: Text('lalalalal'),),
      )
    );
  }
}


