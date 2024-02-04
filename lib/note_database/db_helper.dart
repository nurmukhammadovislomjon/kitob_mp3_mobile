import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

class SQLHelper {
  static Future<void> createTables(Database database) async {
    debugPrint("Tables creating...");
    await database.execute(
      """CREATE TABLE todos (
        "id" TEXT NOT NULL,
        "title" TEXT NOT NULL,
        "description" TEXT NOT NULL
      )
      """,
    );
  }

  static Future<Database> db() async {
    return openDatabase(
      'todo-1.db',
      version: 1,
      onCreate: (Database database, int version) async {
        await createTables(database);
      },
    );
  }
}
