import 'package:flutter/material.dart';
import './ProductManager.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('first App')),
        body: ProductManager()
        ),
      );
  }
}
