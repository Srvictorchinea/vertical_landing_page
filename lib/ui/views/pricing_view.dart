import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: FittedBox(
          child: Text(
            'About', 
            style: GoogleFonts.roboto(fontSize: 40, color: Colors.black),
          ),
        ),
      ),
    );
  } 
}