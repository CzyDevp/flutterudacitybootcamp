import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Udacity BootCamp',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Hello Udacity"),
        ),
        body: new Rectangle(),
      )
     );
  }
}
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

