import 'package:flutter/material.dart';
class Rectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello BootCamp',
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}