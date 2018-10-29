import 'package:flutter/material.dart';
import 'package:flutterudacitybootcamp/Category.dart';
import 'package:flutterudacitybootcamp/CategoryRoute.dart';
import 'Rectangle.dart';
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
            elevation: 0.0,
            backgroundColor: Colors.green[100],
            centerTitle: true,
            title: Text("Unit Converter",
              style:TextStyle(
                  fontSize:30.0,
                  color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.cake,
                  color: Colors.black,
                ),
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


