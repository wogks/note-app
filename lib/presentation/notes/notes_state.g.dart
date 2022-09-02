// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteState _$$_NoteStateFromJson(Map<String, dynamic> json) => _$_NoteState(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => MyNote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NoteStateToJson(_$_NoteState instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
