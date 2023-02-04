import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_fingma_clone/header_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTop extends StatelessWidget {
  const HeaderTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Habib 👋',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Let’s explore your notes',
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/img/profile.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          HeaderCard()
        ],
      ),
    );
  }
}
