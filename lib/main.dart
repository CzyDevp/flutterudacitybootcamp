import 'package:flutter/material.dart';
import 'package:flutterudacitybootcamp/Category.dart';

// TODO: Pass this information into your custom [Category] widget
const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Udacity BootCamp',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(
            builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Hello Udacity"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.cake),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Category(
                              name: _categoryName,
                              color: _categoryColor,
                              iconData: _categoryIcon,
                            )
                    ),
                  );
                },
              )
            ],
          ),
          body: Rectangle(),
        )
    ),
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
