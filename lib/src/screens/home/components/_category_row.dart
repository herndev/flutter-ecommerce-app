import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/components/text_widgets.dart';

Widget buildCategoryRow(BuildContext context, String section) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          section,
          style: mediumText,
        ),
        SizedBox(height: 10),
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
            onPressed: () => {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => fetchProducts().indexOf(element))),
            },
            tooltip: "Filter",
            visualDensity: VisualDensity.adaptivePlatformDensity,
            iconSize: 30,
            padding: EdgeInsets.all(8),
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
