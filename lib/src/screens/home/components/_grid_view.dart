import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/details/details_screen.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_grid_card.dart';

GridView buildProductGridView(BuildContext context, List<dynamic> products) {
  var orientation = MediaQuery.of(context).orientation;
  return GridView.builder(
    itemCount: products.length,
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
                        product: products[index],
                      ))),
        },
        child: gridCardItem(products[index]),
      );
    },
  );
}
