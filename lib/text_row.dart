import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRow extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text1;
  final String text2;

  const TextRow({
    super.key,
    required this.color1,
    required this.color2,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: GoogleFonts.inter(
                fontSize: 14, color: color1, fontWeight: FontWeight.w600),
          ),
          Text(
            text2,
            style: GoogleFonts.inter(
                fontSize: 12, color: color2, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
