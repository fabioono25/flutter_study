import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Question(questions[questionIndex]['questionText']),
        //new Question(questions[questionIndex]),
        // Text(questions[questionIndex]),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerQuestion(answer['score']), answer['text']))
            .toList(),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // RaisedButton(
        //   child: Text('Answer 2'),
        //   onPressed: () => print('Question 2 answered!'),
        // ),
        // RaisedButton(
        //   child: Text('Answer 3'),
        //   onPressed: () {
        //     print('Question 3 answered!');
        //   },
        // ),
      ],
    );
  }
}
