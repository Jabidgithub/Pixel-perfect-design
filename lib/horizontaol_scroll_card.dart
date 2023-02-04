import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_section.dart';

class HorizontalScrollCard extends StatelessWidget {
  final String svgImage;
  final String headerText;
  final String date;

  HorizontalScrollCard({
    super.key,
    required this.svgImage,
    required this.headerText,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              svgImage,
              height: 36,
              width: 32,
            ),
            Text(
              headerText,
              style: GoogleFonts.inter(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Text(
                  'Save Date:',
                  style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Color(0xff042E2B),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  date,
                  style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Color(0xff042E2B),
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
