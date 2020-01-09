import 'package:flutter/material.dart';
import './ProductManager.dart';
import 'package:flutter/rendering.dart';

void main(){
  debugPaintSizeEnabled = true;
  runApp(myApp());
}

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        //accentColor: Colors.deepPurple

      ),
      home: Scaffold(
        appBar: AppBar(title: Text('first App')),
        body: ProductManager(startingProducts: 'mohamed samir')
        ),
      );
  }
}
