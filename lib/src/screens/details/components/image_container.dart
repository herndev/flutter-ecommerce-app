import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';
import 'package:flutter_ecommerce_app/src/screens/details/components/app_bar.dart';

Container imageContainer(double imageHeight, Product product) {
  return Container(
    height: imageHeight,
    child: Hero(tag: product.id, child: Image.network(product.image)),
  );
}

Row thumbnailImages(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      clipImageRect(product.image),
      SizedBox(width: 10),
      clipImageRect(product.image),
      SizedBox(width: 10),
      clipImageRect(product.image),
    ],
  );
}
