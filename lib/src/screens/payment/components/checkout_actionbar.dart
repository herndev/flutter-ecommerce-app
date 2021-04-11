import 'package:flutter/material.dart';


AppBar buildCheckoutAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text('Checkout (\$ 128.00)',
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