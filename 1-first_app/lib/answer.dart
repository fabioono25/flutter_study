import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _selectHandler;
  final String answerText;

  Answer(this._selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.black45,
              textColor: Colors.white,
              child: Text(answerText),
              onPressed: _selectHandler,
            ),
    );
  }
}