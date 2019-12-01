import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

//this class will be recreated
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//this class is not recreated (storing the state)
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      //re-render user interface by calling build() method again
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          'Black', 'Red', 'Green', 'White'
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          'Rabbit', 'Snake', 'Lion', 'Elephant'
        ]
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          'John', 'Jean'
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My First App')),
          backgroundColor: Colors.lightGreen[700],
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
