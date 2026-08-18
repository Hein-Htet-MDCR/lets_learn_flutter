import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestFont extends StatelessWidget {
  const TestFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello Flutter",
      style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
