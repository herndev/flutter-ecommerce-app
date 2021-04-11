import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../apis.dart';
import 'banner_container.dart';
import '../../payment/payment_screen.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  List cartItems = [];

  @override
  void initState() {
    getProductByLimit(3).then((response) {
      print('responseBody: $response');
      if (response.statusCode == 200) {
        setState(() {
          cartItems = response.data as List;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return cartItems.length == 0
        ? Center(
            child: CircularProgressIndicator(
                strokeWidth: 2, backgroundColor: Colors.indigoAccent),
          )
        : Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  buildBannerContainer(),
                  SizedBox(height: 20),
                  Expanded(
                      child: ListView.builder(
                          itemCount: cartItems.length,
                          itemBuilder: (BuildContext ctxt, int index) =>
                              buildBody(ctxt, index))),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 80,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '\$ 128.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PaymentGateway()));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text('Checkout',
                                  style: TextStyle(fontSize: 20)))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  buildBody(BuildContext ctxt, int index) {
    return Card(
      child: Center(
        child: Container(
            height: 100,
            //color: Colors.indigo.shade100,
            child: ListTile(
              title: Text(
                cartItems[index]['title'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              leading: Image.network(
                cartItems[index]['image'],
                height: double.infinity,
                width: 60,
              ),
              subtitle: Text(
                '\$ ${cartItems[index]['price']}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )),
      ),
    );
  }
}
