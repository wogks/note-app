import 'package:note_app/domain/model/my_note.dart';

import '../repository/note_repository.dart';

class GetNote {
  final NoteRepository repository;

  GetNote(this.repository);

  Future<MyNote?> call(int id) async {
    return repository.getNoteById(id);
  }
}
