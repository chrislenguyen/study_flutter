import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function function;
  Answer(this.answerText, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: function,
      ),
    );
  }
}
