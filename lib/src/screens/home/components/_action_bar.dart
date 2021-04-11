import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


AppBar homeActionBar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        CupertinoIcons.profile_circled,
        size: 60,
        color: Colors.blue,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amazon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            'Welcome Shailesh',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          )
        ],
      ),
    ),
    centerTitle: false,
    actions: [
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: ()=> print("Notification.."),
            child: Icon(CupertinoIcons.bell,
                size: 30, color: Colors.deepPurple),
          )),
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: ()=> print("Cart.."),
            child: Icon(CupertinoIcons.cart,
                size: 30, color: Colors.deepPurple),
          )),
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: ()=> print("Search.."),
            child: Icon(CupertinoIcons.search,
                size: 30, color: Colors.deepPurple),
          ))
      //Icon(CupertinoIcons.search, size: 30, color: Colors.indigoAccent)
    ],
  );

}
