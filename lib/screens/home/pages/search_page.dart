import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({super.key});

  @override
  State<SearchPageWidget> createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: listColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: bottomBarColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: backgroundColor,
                  width: 2,
                ),
              ),
              hintText: "Kitoblarni qidirish",
              hintStyle: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.7),
                fontSize: 18,
              ),
              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search, color: whiteColor,size: 25,),)
            ),
            cursorColor: Colors.white,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
