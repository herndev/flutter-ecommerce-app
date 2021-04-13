import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants.dart';

import '../../login/login_screen.dart';

AppBar homeActionBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Hero(
            tag: "userThumbnail",
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(profileThumb),
              backgroundColor: Colors.transparent,
            )),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amazon',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            'Welcome Shailesh',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          )
        ],
      ),
    ),
    centerTitle: false,
    actions: [
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () => print("Notification.."),
            child:
                Icon(CupertinoIcons.bell, size: 30, color: Colors.deepPurple),
          )),
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () => print("Cart.."),
            child:
                Icon(CupertinoIcons.cart, size: 30, color: Colors.deepPurple),
          )),
      //Icon(CupertinoIcons.search, size: 30, color: Colors.indigoAccent)
    ],
  );
}
