import 'package:flutter/material.dart';

Container homeCategory(List categories) {
  return Container(
    height: 60,
    child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return InkWell(
            onTap: ()=> print(categories[position]),
            child: Padding(
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
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(
                  child: Text(
                    categories[position].toString().toUpperCase(),
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
              ),
            ),
          );
        }),
  );
}