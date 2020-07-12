import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if(resultScore == 5) {
      resultText = 'Vc é um cavaleiro de ouro';
    } else if(resultScore == 4) {
      resultText = 'Vc é um cavaleiro de prata';
    } else if(resultScore == 3) {
      resultText = 'Vc é um cavaleiro de bronze';
    } else if(resultScore == 2) {
      resultText = 'Vc é um capanga figurante do santuário, desses com tarja nos olhos';
    } else {
      resultText = 'Vc acabou de chegar no santuário, precisa treinar mais';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase, 
            style: TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reiniciar'),
            onPressed: () => resetHandler(),
          )
        ],
      ),
    );

  }
}

