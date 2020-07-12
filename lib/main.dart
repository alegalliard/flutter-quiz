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

  final _questions = const [
      {
      'questionText': 'Quem é o cavaleiro de leão?',
      'answers': [{'text': 'Aiolos', 'score': 0}, {'text': 'Aiolia', 'score': 1}]
      }, {
      'questionText': 'Qual é a armadura de ouro usada por Shiryu?',
      'answers': [{'text': 'Libra', 'score': 1}, {'text': 'Leão', 'score': 0}, {'text': 'Virgem', 'score': 0}]
      }, {
      'questionText': 'Qual o nome da atual deusa Athena?',
      'answers': [{'text': 'Shina', 'score': 0}, {'text': 'Seika', 'score': 0}, {'text': 'Saori', 'score': 1}]
      }, {
      'questionText': 'Qual o nome do avô da Saori?',
      'answers': [{'text': 'Mitsumasa Kido', 'score': 1}, {'text': 'Musami Kurumada', 'score': 0} ]
      }, {
      'questionText': 'Qual o nome da irmã de Seiya?',
      'answers': [{'text': 'Marin', 'score': 0}, {'text': 'Seika', 'score': 1}, {'text': 'Shina', 'score': 0}]
      }
    ];

    var _questionIndex = 0;
    var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    
 
    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }
    
    void _answerQuestion(int score) {

      _totalScore += score;

      if(_questionIndex <  _questions.length) {
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
        body: _questionIndex < _questions.length 
          ? Quiz(
              answerQuestion: _answerQuestion, 
              questionIndex: _questionIndex, 
              questions: _questions
            )
          : Result(_totalScore, _resetQuiz),
      )
    );
  }
  
}