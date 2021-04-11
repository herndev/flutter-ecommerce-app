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

Container homeCategory(List categories) {
  return Container(
    height: 60,
    child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              height: 60,
              width: 130,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: position == 0
                      ? Border.all(
                    color: Colors.blue,
                    width: 2
                  )
                      : Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  categories[position].toString().toUpperCase(),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        }),
  );
}