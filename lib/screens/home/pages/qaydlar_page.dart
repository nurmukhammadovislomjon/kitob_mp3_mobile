import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/note_model/model.dart';
import 'package:kitob_mp3/screens/colors/color.dart';
import 'package:kitob_mp3/screens/home/pages/qaydlar_element/open_note_page.dart';

class QaydlarPageWidget extends StatefulWidget {
  const QaydlarPageWidget({super.key});

  @override
  State<QaydlarPageWidget> createState() => _QaydlarPageWidgetState();
}

class _QaydlarPageWidgetState extends State<QaydlarPageWidget> {
  List<Todo> todos = [];

  @override
  void initState() {
    super.initState();
    loadTodos();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 140),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          Todo todo = todos[index];
          return Container(
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(5),
            child: ListTile(
              leading: Image.asset("assets/images/book.png"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenNoteBook(description: todo.description, title: todo.title, index: index)));
              },
              title: Text(
                todo.title,
                style: GoogleFonts.poppins(color: whiteColor, fontSize: 18),
              ),
              trailing: IconButton(
                onPressed: () {
                  todo.delete();
                  loadTodos();
                },
                icon: Icon(
                  Icons.remove_circle,
                  color: whiteColor,
                  size: 30,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  loadTodos() async {
    todos = await Todo.all();

    for (var e in todos) {
      print(e.toMap());
    }

    setState(() {});
  }
}
