import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final List<String> text;
  final int currentState;

  DisplayText(this.text, this.currentState);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text[currentState],
          style: TextStyle(
            color: Colors.purple,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
