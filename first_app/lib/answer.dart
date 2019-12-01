import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _selectHandler;

  Answer(this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('answer 1'),
              onPressed: _selectHandler,
            ),
    );
  }
}