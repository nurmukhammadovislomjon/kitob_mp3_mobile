import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/main.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/login/save_login.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String? name;
  String? familya;

  @override
  void initState() {
    super.initState();
    getUserProfile();
    setState(() {});
  }

  Future getUserProfile() async {
    name = await SaveLogin.getName();
    familya = await SaveLogin.getFamilya();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          name.toString(),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                "assets/icons/user.svg",
                height: 120,
                width: 120,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  name.toString(),
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  familya.toString(),
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () {
                  SaveLogin.logOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) =>const MyApp()),
                      (route) => false);
                },
                child: Center(
                  child: Text(
                    "Tizimdan chiqish",
                    style: GoogleFonts.poppins(color: whiteColor, fontSize: 20),
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
