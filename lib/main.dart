import 'package:firsr_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalScore = 0;
  }

  var _questions = [
    {
      'questionText': 'What was my cgpi in Sem 1?',
      'answers': [
        {'text': '8.96', 'score': 0},
        {'text': '9.12', 'score': 10},
        {'text': '9.04', 'score': 0},
        {'text': 'None of these', 'score': 0}
      ],
    },
    {
      'questionText': 'What was my cgpi in Sem 2?',
      'answers': [
        {'text': 'None of these', 'score': 0},
        {'text': '9.04', 'score': 0},
        {'text': '8.96', 'score': 10},
        {'text': '9.12', 'score': 0}
      ],
    },
    {
      'questionText': 'Now choose my SGPI.',
      'answers': [
        {'text': '9.04', 'score': 10},
        {'text': '9.12', 'score': 0},
        {'text': '8.96', 'score': 0},
        {'text': 'None of these', 'score': 0}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Quiz App'),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
