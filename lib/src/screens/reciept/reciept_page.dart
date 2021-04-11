import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptPage extends StatefulWidget {
  @override
  _ReceiptPageState createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.green, size: 40,),
              SizedBox(height: 10),
              Text(' You have successfully placed your order !!', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),),
              SizedBox(height: 20),
              Text(' Thank You for shopping with us !!', style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
              ),),

              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    //Navigator.popUntil(context, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),),
                  child: Text('DONE, SHOP AGAIN', style: TextStyle(fontSize: 20)))
            ],
          ),
        ),
      )
    );
  }
}
