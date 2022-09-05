// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_state.dart';

class NotesViewModel with ChangeNotifier {
  UseCases useCases;

  NoteState _state = const NoteState(
    notes: [],
    noteOrder: NoteOrder.date(OrderType.descending()),
    isOrderSectionVisible: false,
  );
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
      changeOrder: (NoteOrder noteOrder) {
        _state = state.copyWith(
          noteOrder: noteOrder,
        );
        _loadNotes();
      },
      toggleOerderSection: () {
        _state = state.copyWith(
          isOrderSectionVisible: !state.isOrderSectionVisible,
        );
        notifyListeners();
      },
    );
  }

  Future<void> _loadNotes() async {
    List<MyNote> notes = await useCases.getNotes(state.noteOrder);
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
