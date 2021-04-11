import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

Row buildActionbar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Furnitures',
        style: GoogleFonts.lato(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.pink),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())),
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade400,
        ),
      )
    ],
  );
}


AppBar homeActionBar(){

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        CupertinoIcons.profile_circled,
        size: 60,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amazon',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Welcome Shailesh',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    ),
    centerTitle: false,
    actions: [
      Padding(
          padding: EdgeInsets.all(8),
          child: Icon(CupertinoIcons.bell,
              size: 30, color: Colors.black)),
      Padding(
          padding: EdgeInsets.all(8),
          child: Icon(CupertinoIcons.cart,
              size: 30, color: Colors.black)),

      Padding(
          padding: EdgeInsets.all(8),
          child: Icon(CupertinoIcons.search,
              size: 30, color: Colors.black))
      //Icon(CupertinoIcons.search, size: 30, color: Colors.indigoAccent)
    ],
  );

}
