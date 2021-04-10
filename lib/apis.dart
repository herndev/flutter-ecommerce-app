import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';

import 'dart:async';

Future<List<Product>> fetchAllProducts() async {
  final response = await Dio().get('https://fakestoreapi.com/products');
  return parseProducts(response.data);
}

List<dynamic> parseProducts(responseBody) {
  var fakeObjects =
      responseBody.map((tagJson) => Product.fromJson(tagJson)).toList();
  return fakeObjects;
}

Future getCategories() async {
  try {
    var response =
        await Dio().get('https://fakestoreapi.com/products/categories');
    return response.data;
  } catch (e) {
    print(e);
  }
}

Future getProducts() async {
  try {
    var response = await Dio().get('https://fakestoreapi.com/products');
    final jsonData = json.decode(response.data);
    //var map = Map<String, dynamic>.from(jsonData);
    var someValue = Product.fromJson(jsonData);
    if (response.statusCode == 200) {
      // success // play with data
      return response;
    } else {
      // handle failure
    }
    print(someValue);
    return response;
  } catch (e) {
    print(e);
  }
}

void getProductByCategory(category) async {
  try {
    var response =
        await Dio().get('https://fakestoreapi.com/products/category/$category');
    print(response);
  } catch (e) {
    print(e);
  }
}

void getProductByLimit(limit) async {
  try {
    var response =
        await Dio().get('https://fakestoreapi.com/products?limit=$limit');
    print(response);
  } catch (e) {
    print(e);
  }
}

void getProductById(id) async {
  try {
    var response = await Dio().get('https://fakestoreapi.com/products/$id');
    print(response);
  } catch (e) {
    print(e);
  }
}
