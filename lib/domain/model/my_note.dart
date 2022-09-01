import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_note.freezed.dart';

part 'my_note.g.dart';

@freezed
class MyNote with _$MyNote {
  const factory MyNote(
      {required String title,
      required String content,
      required int color,
      required int timestamp,
      int? id}) = _MyNote;

  factory MyNote.fromJson(Map<String, Object?> json) => _$MyNoteFromJson(json);
}
