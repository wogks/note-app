import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class DeleteNote {
  final NoteRepository repository;

  DeleteNote(this.repository);

  Future<void> call(MyNote note) async {
    await repository.deleteNote(note);
  }
}
