import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: FittedBox(
          child: Text(
            'Location', 
            style: GoogleFonts.roboto(fontSize: 40, color: Colors.black),
          ),
        ),
      ),
    );
  } 
}