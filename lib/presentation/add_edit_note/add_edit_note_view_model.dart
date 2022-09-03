import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  int _color = Colors.orange.value;
  int get color => _color;

  AddEditNoteViewModel(this.repository);

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (id == null) {
      repository.insertNote(
        MyNote(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().microsecondsSinceEpoch,
        ),
      );
    } else {
      await repository.updateNote(
        MyNote(
            title: title,
            content: content,
            color: _color,
            timestamp: DateTime.now().microsecondsSinceEpoch),
      );
    }
  }
}
