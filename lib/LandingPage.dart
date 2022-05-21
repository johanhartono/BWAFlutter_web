// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class LandingPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xff1D1E3C),
                    fontWeight: index == selectedIndex
                        ? FontWeight.w500
                        : FontWeight.w300),
              ),
              Container(
                width: 66,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == selectedIndex
                      ? Color(0xff889900)
                      : Colors.transparent,
                ),
              )
            ],
          ));
    }

    return Scaffold(
        //body: Image.asset('illustration.png')
        body: Stack(children: [
      Image.asset('background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill),
      // ignore: prefer_const_constructors
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'logo.png',
                  width: 72,
                  height: 40,
                ),
                Row(
                  children: [
                    navItem(
                      title: 'Guides',
                      index: 0,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Pricing',
                      index: 1,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Teams',
                      index: 2,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Stories',
                      index: 3,
                    ),
                  ],
                ),
                Image.asset(
                  'btn.png',
                  width: 163,
                  height: 53,
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 76,
            ),
            Image.asset(
              'illustration.png',
              width: 550,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'logo.png',
                  width: 20,
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Scroll to Learn More',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      )
    ]));
  }
}
