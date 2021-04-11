import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';
import 'package:flutter_ecommerce_app/src/screens/details/components/app_bar.dart';
import 'package:flutter_ecommerce_app/src/screens/details/components/box_decoration.dart';
import 'package:flutter_ecommerce_app/src/screens/home/components/title_rating.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    var imageHeight = (MediaQuery.of(context).size.height) / 2;
    Product product = widget.product;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(shrinkWrap: true, children: [
        Container(
          height: imageHeight,
          child: Hero(
              tag: widget.product.id,
              child: Image.network(widget.product.image)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: boxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndRating(product: product),
              SizedBox(height: 10),
              Text(product.description),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  clipImageRect(widget.product.image),
                  SizedBox(width: 10),
                  clipImageRect(widget.product.image),
                  SizedBox(width: 10),
                  clipImageRect(widget.product.image),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Color'),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent[400],
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.red.shade300,
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.indigo.shade300,
                    radius: 20,
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                print(_itemCount);
                                setState(() {
                                  _itemCount = (_itemCount + 1);
                                });
                              },
                              child: Icon(CupertinoIcons.plus_circle)),
                          Text('$_itemCount'),
                          InkWell(
                              onTap: () {
                                print(_itemCount);
                                setState(() {
                                  if (_itemCount != 1) {
                                    _itemCount = (_itemCount - 1);
                                  }
                                });
                              },
                              child: Icon(CupertinoIcons.minus_circle))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    '\$ ${product.price}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        // To The cart
                        print("BUY NOW");
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: Text("BUY NOW"),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
