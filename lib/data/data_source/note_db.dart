import 'package:note_app/domain/model/my_note.dart';
import 'package:sqflite/sqlite_api.dart';

class NoteDb {
  Database db;

  NoteDb(this.db);

  Future<MyNote?> getNoteById(int id) async {
    final List<Map<String, dynamic>> maps = await db.query(
      'note',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return MyNote.fromJson(maps.first);
    }
    return null;
  }

  Future<List<MyNote>> getNotes() async {
    final maps = await db.query('note');

    return maps.map((e) => MyNote.fromJson(e)).toList();
  }

  Future<void> insertNote(MyNote note) async {
    await db.insert('note', note.toJson());
  }

  Future<void> updateNote(MyNote note) async {
    await db.update(
      'note',
      note.toJson(),
      where: 'id = ?',
      whereArgs: [note.id]
    );
  }

  
}
