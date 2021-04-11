import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';

Card gridCardItem(Product item) {
  return Card(
    elevation: 0,
    child: new GridTile(
      footer: Container(
        color: Colors.grey.shade200,
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              item.title,
              maxLines: 1,
              style: TextStyle(fontSize: 12),
            )),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image.network(
          item.image,
          fit: BoxFit.contain,
        ),
      ), //just for testing, will fill with image later
    ),
  );
}
