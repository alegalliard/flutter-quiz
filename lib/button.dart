import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String buttonLabel;

  Btn(this.buttonLabel);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(buttonLabel),
      onPressed: null,
    );
  }
}