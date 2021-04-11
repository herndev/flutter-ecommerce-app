import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar detailAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()=> Navigator.pop(context),
        child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.blueGrey,
            )),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red.shade300,
              size: 30,
            )),
      ),
    ],
  );
}
