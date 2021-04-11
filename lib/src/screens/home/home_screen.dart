import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/apis.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/body.dart';
import 'components/_action_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fakeProducts = [];
  List categories = [];

  @override
  void initState() {
    // adding the products here
    // You can get products here from api also and render the views
    // accordingly

    getCategories().then((items) {
      setState(() {
        categories = items;
        categories.insert(0, "ALL");
      });
    });

    fetchAllProducts().then((items) {
      setState(() {
        fakeProducts = items;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: homeActionBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: HomeBody(
          categories: categories,
          products: fakeProducts,
        ),
      ),
    );
  }
}
