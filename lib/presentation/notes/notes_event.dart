import 'package:note_app/domain/model/my_note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_event.freezed.dart';

@freezed
abstract class NotesEvent with _$NotesEvent {
  const factory NotesEvent.loadNotes() = LoadNotes;
  const factory NotesEvent.deleteNote(MyNote note) = DeleteNote;
  const factory NotesEvent.restoreNote() = RestoreNote;
}
