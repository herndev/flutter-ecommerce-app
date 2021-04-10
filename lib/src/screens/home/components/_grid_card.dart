import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';

Card gridCardItem(Product item) {
  return Card(
    elevation: 0,
    //color: item.color,
    child: new GridTile(
      footer: Padding(
          padding: EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.title,
                style: TextStyle(fontSize: 10),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              )
            ],
          )),
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
