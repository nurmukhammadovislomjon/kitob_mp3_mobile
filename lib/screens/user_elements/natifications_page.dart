import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
      title: Text(
        "Bildirishnomalar",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      backgroundColor: bottomBarColor,
    ),
    );
  }
}