import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildCartAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text('Your Cart (3 items)',
      style: TextStyle(
      color: Colors.indigo,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),),

    centerTitle: false,
    leading: InkWell(
      onTap: (){
        Navigator.pop(context);
      },
        child: Icon(Icons.arrow_back, color: Colors.indigo,)),
  );
}