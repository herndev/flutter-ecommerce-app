import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/apis.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            CupertinoIcons.profile_circled,
            size: 45,
          ),
          title: Text(
            'Hi Shailesh !',
            style: TextStyle( fontSize: 18),
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
              padding: EdgeInsets.all(8),
              child: Center(child: Text('User Login'))),
          Padding(
              padding: EdgeInsets.all(8),
              child: Icon(CupertinoIcons.bell,
                  size: 30, color: Colors.indigoAccent)),
          //Icon(CupertinoIcons.search, size: 30, color: Colors.indigoAccent)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text("Discover your favorite products",
              style: TextStyle(fontSize: 28),)
            //SizedBox(height: 30),
            //buildActionbar(context),
            //SizedBox(height: 20),
            //buildSearchRow(),
            //buildCategoryRow(context, "Categories"),
            //buildCategoryListView(fakeProducts),
            //buildCategoryRow(context, "Other Products"),
            //Flexible(child: buildProductGridView(context, fakeProducts) //),),
          ],
        ),
      ),
    );
  }
}
