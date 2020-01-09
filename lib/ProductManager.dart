import 'package:flutter/material.dart';
import './Products.dart';

class ProductManager extends StatefulWidget {

 final String startingProducts ;

 ProductManager(this.startingProducts);

  @override
  State<StatefulWidget> createState() {
    print("/////////////////////////////////////////////");
    print(startingProducts);
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {

  List<String> products = [];

  @override
  void initState() {
    products.add(widget.startingProducts);
    super.initState();

  }

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
