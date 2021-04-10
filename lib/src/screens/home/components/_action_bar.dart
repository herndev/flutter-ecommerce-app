import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/screens/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

Row buildActionbar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Furnitures',
        style: GoogleFonts.lato(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.pink),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())),
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade400,
        ),
      )
    ],
  );
}
