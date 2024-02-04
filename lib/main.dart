import 'package:flutter/material.dart';
import 'package:kitob_mp3/screens/home/home.dart';
import 'package:kitob_mp3/screens/login/login_page.dart';
import 'package:kitob_mp3/screens/login/save_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return snapshot.hasData ? const HomePage() : const LoginPage();
        },
      ),
    );
  }

  Future init() async {
    String? name = await SaveLogin.getName();
    debugPrint(name);
    return name;
  }
}
// LoginPage()