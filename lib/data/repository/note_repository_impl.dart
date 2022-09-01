import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

import '../data_source/note_db.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDb db;

  NoteRepositoryImpl(this.db);

  @override
  Future<void> deleteNote(MyNote note) async {
    await db.deleteNote(note);
  }

  @override
  Future<MyNote?> getNoteById(int id) async {
    return await db.getNoteById(id);
  }

  @override
  Future<List<MyNote>> getNotes() async {
    return await db.getNotes();
  }

  @override
  Future<void> insertNote(MyNote note) async {
    await db.insertNote(note);
  }

  @override
  Future<void> updateNote(MyNote note) async {
    await db.updateNote(note);
  }
}
