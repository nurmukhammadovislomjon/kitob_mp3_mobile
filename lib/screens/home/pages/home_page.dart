import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/home/pages/home_element/listview.dart';
import 'package:kitob_mp3/screens/home/pages/home_element/slider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        HomeSliderWidget(),
        SizedBox(
          height: 50,
        ),
        Text(
          "Eng sara audio kitoblar",
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListViewPage()
      ],
    );
  }
}
