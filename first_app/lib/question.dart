import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText; //this value will never change after initialization

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(this.questionText);
  }
}