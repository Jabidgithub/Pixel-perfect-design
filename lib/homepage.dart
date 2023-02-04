import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_fingma_clone/text_row.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_section.dart';
import 'horizontaol_scroll_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color(0xffF3F3F3),
            ),
            Container(
              height: size.height * 0.4825,
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff042E2B),
                    Color.fromARGB(255, 12, 45, 42),
                  ],
                ),
              ),
              child: HeaderTop(),
            ),
            Positioned.fill(
              top: 330,
              child: Column(
                children: [
                  TextRow(
                    color1: Color(0xffFFFFFF),
                    color2: Color.fromRGBO(255, 255, 255, 0.7),
                    text1: 'Reminder Task',
                    text2: 'See All',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        HorizontalScrollCard(
                          svgImage: 'assets/svg/todo01.svg',
                          headerText: 'Online Class Routine',
                          date: '10/12/2022',
                        ),
                        HorizontalScrollCard(
                          svgImage: 'assets/svg/todo02.svg',
                          headerText: 'Office Work List',
                          date: '15/12/2022',
                        ),
                        HorizontalScrollCard(
                          svgImage: 'assets/svg/todo03.svg',
                          headerText: 'Day Task',
                          date: '10/12/2022',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextRow(
                    color1: Colors.black,
                    color2: Colors.black,
                    text1: 'All Tasks',
                    text2: 'See All',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              selected: true,
                              leading: Transform.translate(
                                offset: Offset(0, 1),
                                child: SvgPicture.asset(
                                  'assets/svg/todo01.svg',
                                  height: 36,
                                  width: 32,
                                ),
                              ),
                              title: Text(
                                'Online Class Routine',
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                'Save Date:  10/12/2022',
                                style: GoogleFonts.inter(
                                    fontSize: 10,
                                    color: Color(0xff042E2B),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(61, 0, 0, 0),
                spreadRadius: 0,
                blurRadius: 2),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: BottomNavigationBar(
            selectedLabelStyle: GoogleFonts.inter(
              fontSize: 12,
            ),
            unselectedLabelStyle: GoogleFonts.inter(
              fontSize: 12,
            ),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff042E2B),
            unselectedItemColor: Color(0xffB4C1C0),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset('assets/svg/Home.svg'),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset('assets/svg/Search.svg'),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset('assets/svg/Video.svg'),
                ),
                label: 'Record',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset('assets/svg/Save.svg'),
                ),
                label: 'Save',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset('assets/svg/Settings.svg'),
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
