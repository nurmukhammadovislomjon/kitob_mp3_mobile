import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/main.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/login/save_login.dart';
import 'package:kitob_mp3/screens/user_elements/natifications_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Sozlash",
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
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsPage(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.notifications,
                  color: whiteColor,
                  size: 25,
                ),
                tileColor: listColor,
                title: Text(
                  "Bildirishnomalar",
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: whiteColor,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  SaveLogin.logOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (route) => false);
                },
                leading: Icon(
                  Icons.logout,
                  color: redColor,
                  size: 25,
                ),
                tileColor: listColor,
                title: Text(
                  "Tizimdan chiqish",
                  style: GoogleFonts.poppins(
                    color: redColor,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: redColor,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.telegram,
                  color: blueColor,
                  size: 25,
                ),
                tileColor: listColor,
                title: Text(
                  "Telegram bot orqali izlash",
                  style: GoogleFonts.poppins(
                    color: blueColor,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: blueColor,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/globe.svg',
                  height: 22,
                ),
                tileColor: listColor,
                title: Text(
                  "Web sayt orqali izlash",
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: whiteColor,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.contact_phone_sharp,
                  color: greenColor,
                  size: 25,
                ),
                tileColor: listColor,
                title: Text(
                  "Kompaniya bilan bog'lanish",
                  style: GoogleFonts.poppins(
                    color: greenColor,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: greenColor,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
