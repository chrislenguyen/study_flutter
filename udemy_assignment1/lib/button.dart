import 'package:flutter/material.dart';

class DisplayButton extends StatelessWidget {
  final Function function;
  DisplayButton(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 500,
        left: 100,
        right: 100,
      ),
      child: RaisedButton(
        child: Text('Press'),
        color: Colors.purple,
        textColor: Colors.white,
        onPressed: function,
      ),
    );
  }
}
