import 'package:note_app/domain/model/my_note.dart';

abstract class NoteRepository {
  Future<List<MyNote>> getNotes();

  Future<MyNote?> getNoteById(int id);

  Future<void> insertNote(MyNote note);

  Future<void> updateNote(MyNote note);

  Future<void> deleteNote(MyNote note);
}