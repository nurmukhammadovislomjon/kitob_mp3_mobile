import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/note_model/model.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class OpenNoteBook extends StatefulWidget {
  const OpenNoteBook(
      {super.key,
      required this.description,
      required this.title,
      required this.index});
  final int index;
  final String title;
  final String description;
  @override
  State<OpenNoteBook> createState() => _OpenNoteBookState();
}

class _OpenNoteBookState extends State<OpenNoteBook> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Kitob.mp3",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: bottomBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Qayd nomi",
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: listColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    widget.title,
                    style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Qayd tarkibi",
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: listColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    widget.description,
                    style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
