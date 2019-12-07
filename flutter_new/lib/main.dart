import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  final _quizSet = const [
    {
      'questionText': '1 + 1',
      'answerText': [
        {'text': '1', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '2', 'score': 1},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'questionText': '2 + 5',
      'answerText': [
        {'text': '4', 'score': 0},
        {'text': '7', 'score': 1},
        {'text': '1', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'questionText': '3 + 3',
      'answerText': [
        {'text': '5', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': 'None of the above', 'score': 1},
      ],
    },
  ];

  var _questionCounter = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionCounter = 0;
      _totalScore = 0;
    });
  }

  void _result(int score) {
    setState(() {
      _totalScore += score;
      _questionCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IQ Test'),
        ),
        body: _questionCounter < _quizSet.length
            ? Quiz(
                answerQuestion: _result,
                questionIndex: _questionCounter,
                quizSet: _quizSet,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
