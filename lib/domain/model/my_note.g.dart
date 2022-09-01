// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyNote _$$_MyNoteFromJson(Map<String, dynamic> json) => _$_MyNote(
      title: json['title'] as String,
      content: json['content'] as String,
      color: json['color'] as int,
      timestamp: json['timestamp'] as int,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_MyNoteToJson(_$_MyNote instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'color': instance.color,
      'timestamp': instance.timestamp,
      'id': instance.id,
    };
