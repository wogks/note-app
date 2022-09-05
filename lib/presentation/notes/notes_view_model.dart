// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/add_note_use_case.dart';
import 'package:note_app/domain/use_case/delete_note_use_case.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_state.dart';

class NotesViewModel with ChangeNotifier {
UseCases useCases;
  

  NoteState _state = NoteState(notes: []);
  NoteState get state => _state;

  MyNote? _recentlyDeletedNote;

  NotesViewModel(this.useCases) {
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: () {},
    );
  }

  Future<void> _loadNotes() async {
    List<MyNote> notes = await useCases.getNotes();
    notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(MyNote note) async {
    await useCases.deleteNote(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await useCases.addNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
