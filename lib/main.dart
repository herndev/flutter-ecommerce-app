import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/home/home_screen.dart';

void main() {
  runApp(EcommApp());
}

class EcommApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ecommerce application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Login'),
    );
  }
}
