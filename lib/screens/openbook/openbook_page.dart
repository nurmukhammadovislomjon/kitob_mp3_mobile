import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/openbook/listening_book_page.dart';

class OpenBookPage extends StatefulWidget {
  const OpenBookPage({super.key, required this.image, required this.title});
  final String title;
  final String image;
  @override
  State<OpenBookPage> createState() => _OpenBookPageState();
}

class _OpenBookPageState extends State<OpenBookPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: size.width * 0.9,
            height: size.width * 0.9,
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(widget.image),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.title,
            style: GoogleFonts.poppins(color: whiteColor, fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute( //title: widget.title,image: widget.image,
                    builder: (context) => ListeningBookPage(title: widget.title,image: widget.image),
                  ),  
                );
              },
              child: Center(
                child: Text(
                  "Kitobni eshitish",
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
