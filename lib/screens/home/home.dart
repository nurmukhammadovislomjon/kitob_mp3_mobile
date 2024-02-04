import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/home/drawer/drawer.dart';
import 'package:kitob_mp3/screens/home/pages/boshqa_page.dart';
import 'package:kitob_mp3/screens/home/pages/home_page.dart';
import 'package:kitob_mp3/screens/home/pages/qaydlar_element/yangi_qayd_page.dart';
import 'package:kitob_mp3/screens/home/pages/qaydlar_page.dart';
import 'package:kitob_mp3/screens/home/pages/search_page.dart';
import 'package:kitob_mp3/screens/login/save_login.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  String? name;
  String? familya;
  @override
  void initState() {
    super.initState();
    getUser();
    setState(() {});
    appBarNull = appbarWidget();
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    return setState(() {});
  }

  AppBar appbarWidget() {
    return AppBar(
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
    );
  }

  AppBar? appBarNull;

  FloatingActionButton? floatingActionButton2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBarNull,
      drawer: DrawerWidget(
        name: name.toString(),
        familya: familya.toString(),
      ),
      body: LiquidPullToRefresh(
        onRefresh: onRefresh,
        backgroundColor: whiteColor,
        animSpeedFactor: 2,
        color: bottomBarColor,
        height: 200,
        child: ListView(
          children: [
            SingleChildScrollView(
              child: [
                const HomePageWidget(),
                const SearchPageWidget(),
                const QaydlarPageWidget(),
                const BoshqaPageWidget(),
              ][currentIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: bottomBarColor,
          // showSelectedLabels: false,
          selectedIconTheme: const IconThemeData(
            size: 27,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Asosiy",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Qidiruv",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: "Qaydlar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              label: "Boshqa",
            ),
          ],
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          currentIndex: currentIndex,
          iconSize: 22,
          selectedLabelStyle: GoogleFonts.poppins(),
          unselectedLabelStyle: GoogleFonts.poppins(),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              if (currentIndex == 2) {
                floatingActionButton2 = FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewNotePage(),
                      ),
                    ).then((value) => setState(() {}));
                  },
                  backgroundColor: listColor,
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: whiteColor,
                  ),
                );

                appBarNull = appbarWidget();
                setState(() {});
              } else if (currentIndex == 1) {
                appBarNull = null;
                floatingActionButton2 = null;
                setState(() {});
              } else if (currentIndex == 0) {
                appBarNull = appbarWidget();
                floatingActionButton2 = null;
                setState(() {});
              } else if (currentIndex == 3) {
                appBarNull = appbarWidget();
                floatingActionButton2 = null;
                setState(() {});
              } else {
                floatingActionButton2 = null;
                setState(() {});
              }
            });
          },
        ),
      ),
      floatingActionButton: floatingActionButton2,
    );
  }

  Future getUser() async {
    name = await SaveLogin.getName();
    familya = await SaveLogin.getFamilya();
    setState(() {});
  }
}
