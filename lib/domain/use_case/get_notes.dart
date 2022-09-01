import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNotes {
  final NoteRepository repository;

  GetNotes(this.repository);

  Future<List<MyNote>> call() async {
    List<MyNote> notes = await repository.getNotes();
    return notes;
  }
}