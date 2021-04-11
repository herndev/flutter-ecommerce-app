import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_category_row.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_grid_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
    @required this.categories,
    @required this.products,
  }) : super(key: key);

  final List categories;
  final List products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        //buildSearchRow(),
        //SizedBox(height: 20),
        homeCategory(categories),
        SizedBox(height: 10),
        // Load all products
        Flexible(child: buildProductGridView(context, products))
      ],
    );
  }
}
