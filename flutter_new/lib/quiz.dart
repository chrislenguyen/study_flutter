import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quizSet;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.quizSet,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          quizSet[questionIndex]['questionText'],
        ),
        ...(quizSet[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
