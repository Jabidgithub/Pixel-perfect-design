import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 140,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Welcome to TickTick Task',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 31,
                    width: 109,
                    decoration: BoxDecoration(
                      color: Color(0xff24966D),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromARGB(255, 75, 237, 178),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(255, 255, 250, 0.2),
                          spreadRadius: 2.0,
                          offset: Offset(
                              0.0, 0.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/svg/btn_big.svg',
                            width: 11,
                            height: 11,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Watch Video',
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 78,
              right: -12,
              width: 75.3,
              height: 67.73,
              child: ClipRRect(
                child: SvgPicture.asset('assets/svg/card.svg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
