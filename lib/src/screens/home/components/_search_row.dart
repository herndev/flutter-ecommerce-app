import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/components/search_text.dart';

Row buildSearchRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SearchProductWidget(),
      SizedBox(width: 10),
      CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: IconButton(
          alignment: Alignment.center,
          icon: Icon(
            Icons.filter_list,
            size: 20,
          ),
          onPressed: () => {print("Filter clicked")},
          tooltip: "Filter",
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconSize: 30,
          padding: EdgeInsets.all(8),
          color: Colors.black,
        ),
      ),
    ],
  );
}
