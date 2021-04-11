import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.ptSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(title: 'Login'),
    );
  }
}
