import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
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
