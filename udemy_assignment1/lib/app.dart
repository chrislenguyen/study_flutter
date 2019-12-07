import 'package:flutter/material.dart';
import './button.dart';
import './text.dart';

class App extends StatelessWidget {
  final List<String> textList;
  final int counter;
  final Function function;
  
  App({this.counter, this.function, this.textList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DisplayText(textList, counter),
        DisplayButton(function),
      ],
    );
  }
}