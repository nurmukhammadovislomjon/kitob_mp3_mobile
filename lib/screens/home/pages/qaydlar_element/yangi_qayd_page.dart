import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/note_model/model.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({super.key});

  @override
  State<NewNotePage> createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: title,
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: listColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: bottomBarColor,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: bottomBarColor,
                      width: 3,
                    ),
                  ),
                  hintText: "Qayd nomi",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                ),
                cursorColor: whiteColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: description,
                maxLines: 10,
                inputFormatters: [LengthLimitingTextInputFormatter(500)],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: listColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: bottomBarColor,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: bottomBarColor,
                      width: 3,
                    ),
                  ),
                  hintText: "Eslatmalar kiriting",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                ),
                cursorColor: whiteColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: InkWell(
                onTap: () {
                  if (title.text.isNotEmpty && description.text.isNotEmpty) {
                    Todo.create(
                        title: title.text, description: description.text);
                    title.clear();
                    description.clear();
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      color: bottomBarColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Qaydni saqlash",
                      style:
                          GoogleFonts.poppins(color: whiteColor, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
