import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  String get resultPhrase {
    String result;
    if (resultScore < 3) {
      result = 'Ngu';
    } else {
      result = 'Acceptable';
    }
    return result;
  }

  Result(this.resultScore, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Retry'),
            textColor: Colors.blueAccent,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
