import 'package:flutter/material.dart';
import './Products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<String> products = ['my name'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                products.add('basel');
                print(products);
              });
            },
            child: Text('set Button'),
          ),
        ),
      Products(products)
      ],
    );
  }
}
