import "package:kitob_mp3/note_database/db_helper.dart";
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

class Todo {
  String id;
  String title;
  String description;

  Todo({
    required this.id,
    required this.title,
    required this.description,
  });

  static Todo fromMap(Map<String, dynamic> json) => Todo(
        id: json['id'],
        title: json['title'],
        description: json['description'],
      );

  Map<String, Object?> toMap() => {
        'id': id,
        'title': title,
        'description': description,
      };
  delete() async {
    Database db = await SQLHelper.db();
    await db.delete('todos', where: 'id=?', whereArgs: [id]);
  }

  Future<void> update({
    required String id,
    required String title,
    required String description,
  }) async {
    Database db = await SQLHelper.db();
    await db.update(
        'todos',
        {
          'title': title,
          'description': description,
        },
        where: 'id=?',
        whereArgs: [id]);
  }

  static Future<Todo> create({
    required String title,
    required String description,
  }) async {
    Database db = await SQLHelper.db();
    String id = const Uuid().v4();

    Todo todo = Todo(
      id: id,
      title: title,
      description: description,
    );

    await db.insert('todos', todo.toMap());
    return todo;
  }

  static Future<List<Todo>> all() async {
    Database db = await SQLHelper.db();

    return (await db.query('todos')).map<Todo>((e) => Todo.fromMap(e)).toList();
  }
}
