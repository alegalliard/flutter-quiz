import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './end.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(QuizApp());
}


class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizStateApp();
  }
}


class _QuizStateApp extends State<QuizApp> {

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
      'questionText': 'Quem é o cavaleiro de leão?',
      'answers': ['Aiolos', 'Aiolia']
      }, {
      'questionText': 'Qual é a armadura de ouro usada por Shiryu?',
      'answers': ['Libra', 'Leão', 'Virgem']
      }, {
      'questionText': 'Qual o nome da atual deusa Athena?',
      'answers': ['Shina', 'Seika', 'Saori']
      }, {
      'questionText': 'Qual o nome do avô da Saori?',
      'answers': ['Mitsumasa Kido', 'Musami Kurumada' ]
      }, {
      'questionText': 'Qual o nome da irmã de Seiya?',
      'answers': ['Marin', 'Seika', 'Shina']
      }
    ];
    void _answerQuestion() {
      if(_questionIndex <  questions.length) {
        print('uouuuu');
      }
      setState(() {
        _questionIndex++;
      });
    } 

    var _mainColor = Color.fromARGB(100, 40, 70, 250);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ale quiz'),
          backgroundColor: _mainColor,
        ),
        body: _questionIndex < questions.length 
          ? Quiz(
              answerQuestion: _answerQuestion, 
              questionIndex: _questionIndex, 
              questions: questions
            )
          : EndQuiz(),
      )
    );
  }

}