import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/apis.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';

import 'components/_action_bar.dart';
import 'components/_category_list.dart';
import 'components/_category_row.dart';
import 'components/_grid_view.dart';
import 'components/_search_row.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [];
  var fakeProducts = [];
  List categories = [];

  @override
  void initState() {
    // adding the products here
    // You can get products here from api also and render the views
    // accordingly
    // fakeapi:
    // categories: https://fakestoreapi.com/products/categories
    // products: https://fakestoreapi.com/products
    // by category: https://fakestoreapi.com/products/jewelery

    fetchAllProducts();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            buildActionbar(context),
            SizedBox(height: 20),
            buildSearchRow(),
            buildCategoryRow(context, "Categories"),
            buildCategoryListView(products),
            buildCategoryRow(context, "Other Products"),
            Flexible(child: buildProductGridView(context, products) //),
                ),
          ],
        ),
      ),
    );
  }
}
