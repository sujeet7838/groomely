import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Currently in Development...',
        style: GoogleFonts.teko(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
