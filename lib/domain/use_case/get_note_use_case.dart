import 'package:note_app/domain/model/my_note.dart';

import '../repository/note_repository.dart';

class GetNoteUseCase {
  final NoteRepository repository;

  GetNoteUseCase(this.repository);

  Future<MyNote?> call(int id) async {
    return repository.getNoteById(id);
  }
}
