import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/details/details_screen.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_grid_card.dart';

Container buildCategoryListView(productList) {
  return Container(
    height: 150,
    width: double.infinity,
    child: renderProductCategories(productList),
  );
}

ListView renderProductCategories(productList) {
  return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: productList.length,
      scrollDirection: Axis.horizontal,
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
          //child: Container(width: 100, child: gridCardItem(productList[index])),
        );
      });
}
