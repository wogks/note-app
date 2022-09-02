import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/my_note.dart';

part 'notes_state.freezed.dart';

part 'notes_state.g.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    required List<MyNote> notes,
  }) = _NoteState;

  factory NoteState.fromJson(Map<String, Object?> json) => _$NoteStateFromJson(json);
}