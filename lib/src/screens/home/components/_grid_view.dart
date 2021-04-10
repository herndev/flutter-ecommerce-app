import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';
import 'package:flutter_ecommerce_app/src/screens/details/details_screen.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_grid_card.dart';

GridView buildProductGridView(BuildContext context, List<dynamic> productList) {
  var orientation = MediaQuery.of(context).orientation;
  return GridView.builder(
    itemCount: productList.length,
    padding: EdgeInsets.only(top: 0),
    reverse: false,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetail(
                        product: productList[index],
                      ))),
        },
        //child: gridCardItem(productList[index]),
      );
    },
  );
}
