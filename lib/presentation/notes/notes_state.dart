import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/util/note_order.dart';
import '../../domain/model/my_note.dart';

part 'notes_state.freezed.dart';



@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    required List<MyNote> notes,
    required NoteOrder noteOrder,
  }) = _NoteState;

  
}