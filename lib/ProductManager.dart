import 'package:flutter/material.dart';
import './Products.dart';
import './ProductControl.dart';

class ProductManager extends StatefulWidget {
  final String startingProducts;

  ProductManager({this.startingProducts = 'fugh'});

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
  void didUpdateWidget(ProductManager oldWidget) {

    super.didUpdateWidget(oldWidget);
  }

  void addPrdoucts(String product) {
    setState(() {
      products.add(product);
      print(products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          child: ProductControl(addPrdoucts),
        ),
        Products(products)
      ],
    );
  }
}
