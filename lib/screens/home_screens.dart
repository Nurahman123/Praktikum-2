import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail_screens.dart';
import 'package:flutter_application_1/screens/home_screens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  // Page Controller
  final _PageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 57.6,
            margin: const EdgeInsets.only(
              top: 28.8,
              left: 28.8,
              right: 28.8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: const Color(0x080a0928),
                  ),
                  child: const Icon(Icons.reorder),
                ),
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: const Color(0x080a0928),
                  ),
                  child: const Icon(Icons.search),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 48, left: 28.8),
            child: Text(
              'Welcome Nurohman\n Calon Programan',
              style: GoogleFonts.playfairDisplay(
                  fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
              height: 218.4,
              margin: const EdgeInsets.only(top: 28.8),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _PageController,
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/250?image=9'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreens(),
                        ),
                      );
                      print("You click Me");
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/250?image=9'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreens(),
                        ),
                      );
                      print("You click Me");
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/250?image=9'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreens(),
                        ),
                      );
                      print("You click Me");
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/250?image=9'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreens(),
                        ),
                      );
                      print("You click Me");
                    },
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 28.8, top: 28.8),
            child: SmoothPageIndicator(
              controller: _PageController,
              count: 4,
              effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.blueGrey,
                  dotHeight: 5,
                  dotWidth: 6,
                  spacing: 5),
            ),
          ),
          // judul untuk section vertical content
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Untuk Anda',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Show all',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
          ),
          // Listview (vertical content)
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreens(),
                  ),
                );
                print("You click Me");
              },
            ),
          ),

          // Penutup Listview
        ],
      )),
    ));
  }
}
