import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //creating a getter
  String get resultPhrase {
    if (resultScore <= 8) {
      return 'You are awesome!';
    } else if (resultScore <= 14) {
      return 'That\' ok.';
    } else if (resultScore <= 19) {
      return 'That\' kind of ok.';
    }

    return 'Your score is really bad!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.green,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
