import 'package:flutter/material.dart';
import 'package:kitob_mp3/main.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/home/home.dart';
import 'package:kitob_mp3/screens/home/pages/qaydlar_element/yangi_qayd_page.dart';
import 'package:kitob_mp3/screens/login/save_login.dart';
import 'package:kitob_mp3/screens/this_app/this_app_page.dart';
import 'package:kitob_mp3/screens/user_elements/settings_page.dart';
import 'package:kitob_mp3/screens/user_elements/user_profile_page.dart';

class BoshqaPageWidget extends StatefulWidget {
  const BoshqaPageWidget({super.key});

  @override
  State<BoshqaPageWidget> createState() => _BoshqaPageWidgetState();
}

class _BoshqaPageWidgetState extends State<BoshqaPageWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SettingsPage()));
                },
                child: Center(
                  child: Icon(
                    Icons.settings,
                    color: whiteColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  SaveLogin.logOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                      (route) => false);
                },
                child: Center(
                  child: Icon(
                    Icons.logout,
                    color: redColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewNotePage(),
                    ),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.note_add,
                    color: whiteColor,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfilePage(),
                    ),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.account_circle,
                    color: whiteColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.home,
                    color: whiteColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                color: listColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bottomBarColor,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThisAppPage(),
                    ),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.question_mark_rounded,
                    color: whiteColor,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
