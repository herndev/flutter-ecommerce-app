import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/src/models/products.dart';

import 'dart:async';

Future<List<dynamic>> fetchAllProducts() async {
  final response = await Dio().get('https://fakestoreapi.com/products');
  if(response.statusCode == 200){
    return parseProducts(response.data);
  }
  return [];
}

// Parsing json data to the list models
List<dynamic> parseProducts(responseBody) {
  var listProducts =
      responseBody.map((tagJson) => Product.fromJson(tagJson)).toList();
  return listProducts;
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

Future getProductByLimit(limit) async {
  try {
    var response =
        await Dio().get('https://fakestoreapi.com/products?limit=$limit');
    print(response);
    return response;
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
