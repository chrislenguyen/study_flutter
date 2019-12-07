import 'package:flutter/material.dart'; 
import './app.dart';

void main() => runApp(Assignment1());  

class Assignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AssignmentState();
}



class _AssignmentState extends State<Assignment1> {
  var _stateCounter = 0;
  final _text = ['Do it', 'I', 'Love', 'You'];
  
  void _pressButton () {
    setState(() {
      _stateCounter = (_stateCounter + 1) % 4;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('Assignment 1'),),
    body: App(counter: _stateCounter, function: _pressButton, textList: _text,),
    )
    );
  }
}