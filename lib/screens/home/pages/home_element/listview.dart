import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/openbook/openbook_page.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> title = [
    "Boy ota, kambag'al ota",
    "Pyhon asoslari",
    "Sariq devni minib"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenBookPage(image: "assets/list/0${index+1}.png", title: title[index])));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/list/0${index + 1}.png",
                    height: 200,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title[index],
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
