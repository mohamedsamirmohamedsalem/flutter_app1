import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products
          .map((elements) => Card(
                child: Column(
                  children: <Widget>[
                    Text(elements),
                    Image.asset('assets/mohamed.png')
                  ],
                ),
              ))
          .toList(),
    );
  }
}
