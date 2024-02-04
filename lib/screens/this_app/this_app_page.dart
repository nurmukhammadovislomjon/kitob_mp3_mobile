import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class ThisAppPage extends StatefulWidget {
  const ThisAppPage({super.key});

  @override
  State<ThisAppPage> createState() => _ThisAppPageState();
}

class _ThisAppPageState extends State<ThisAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Ilova haqida",
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
              child: Image.asset(
                "assets/images/book.png",
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Version",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
                Text(
                  "1.0.0",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Mobile",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
                Text(
                  "Islomjon Nurmukhammadov",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Backend",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
                Text(
                  "Mirjalolbek Umarov",
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
