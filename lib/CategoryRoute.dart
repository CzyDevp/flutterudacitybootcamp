import 'package:flutter/material.dart';
import 'package:flutterudacitybootcamp/Category.dart';
class CategoryRoute extends StatelessWidget{
  //list of element values
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];
  //colors
  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];
    for(var i=0;i<_categoryNames.length;i++){
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconData: Icons.cake,
      )
      );
    }
    final listView  = Container(
      color: Colors.green[100],
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildWidget(categories),
    );
    return Scaffold(
      body: listView,
    );
  }

  Widget _buildWidget(List<Widget> categories){
    return ListView.builder(
        itemBuilder: (BuildContext ctx,int index)=> categories[index],
        itemCount: categories.length,
    );
  }
}