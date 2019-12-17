import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You dit it!';

    if (resultScore <= 8) {
      resultText = 'You\' are awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16)
      resultText = 'So so';
    else {
      resultText = 'It\'s bad!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),  
          FlatButton(textColor: Colors.green[600], child: Text('Restart Quiz!'), onPressed: resetHandler,)
        ],
      ),
    );
  }
}
