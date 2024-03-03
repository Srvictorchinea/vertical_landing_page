import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: FittedBox(
          child: Text(
            'contact', 
            style: GoogleFonts.roboto(fontSize: 40, color: Colors.black),
          ),
        ),
      ),
    );
  } 
}