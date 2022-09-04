import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_ui_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  int _color = Colors.orange.value;
  int get color => _color;

  final _eventController = StreamController<AddEditNoteUiEvent>.broadcast();
  Stream<AddEditNoteUiEvent> get eventStream => _eventController.stream;
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
    if(title.isEmpty || content.isEmpty) {
      _eventController.add(const AddEditNoteUiEvent.showSnackBar('제목이나 내용이 비었습니다'));
      return;
    }
    
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
    _eventController.add(const AddEditNoteUiEvent.saveNote());
  }
}
