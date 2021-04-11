import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ClipRRect clipImageRect(image) {
  return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      child: Image.network(image, height: 50, width: 50));
}


AppBar buildAppBar(product) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.blueGrey,
    title: Text(
      product.title,
      style: GoogleFonts.lato(fontSize: 22),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.add_shopping_cart,
          size: 30,
        ),
      )
    ],
  );
}