import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/details/details_screen.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/_grid_card.dart';

Container buildCategoryListView(fakeProducts) {
  return Container(
    height: 150,
    width: double.infinity,
    child: renderProductCategories(fakeProducts),
  );
}

ListView renderProductCategories(List fakeProducts) {
  return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: fakeProducts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetail(
                          product: fakeProducts[index],
                        ))),
          },
          child: Container(width: 100, child: gridCardItem(fakeProducts[index])),
        );
      });
}
