// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyNote _$MyNoteFromJson(Map<String, dynamic> json) {
  return _MyNote.fromJson(json);
}

/// @nodoc
mixin _$MyNote {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyNoteCopyWith<MyNote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNoteCopyWith<$Res> {
  factory $MyNoteCopyWith(MyNote value, $Res Function(MyNote) then) =
      _$MyNoteCopyWithImpl<$Res>;
  $Res call({String title, String content, int color, int timestamp, int? id});
}

/// @nodoc
class _$MyNoteCopyWithImpl<$Res> implements $MyNoteCopyWith<$Res> {
  _$MyNoteCopyWithImpl(this._value, this._then);

  final MyNote _value;
  // ignore: unused_field
  final $Res Function(MyNote) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
    Object? timestamp = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MyNoteCopyWith<$Res> implements $MyNoteCopyWith<$Res> {
  factory _$$_MyNoteCopyWith(_$_MyNote value, $Res Function(_$_MyNote) then) =
      __$$_MyNoteCopyWithImpl<$Res>;
  @override
  $Res call({String title, String content, int color, int timestamp, int? id});
}

/// @nodoc
class __$$_MyNoteCopyWithImpl<$Res> extends _$MyNoteCopyWithImpl<$Res>
    implements _$$_MyNoteCopyWith<$Res> {
  __$$_MyNoteCopyWithImpl(_$_MyNote _value, $Res Function(_$_MyNote) _then)
      : super(_value, (v) => _then(v as _$_MyNote));

  @override
  _$_MyNote get _value => super._value as _$_MyNote;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
    Object? timestamp = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_MyNote(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyNote implements _MyNote {
  const _$_MyNote(
      {required this.title,
      required this.content,
      required this.color,
      required this.timestamp,
      this.id});

  factory _$_MyNote.fromJson(Map<String, dynamic> json) =>
      _$$_MyNoteFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final int color;
  @override
  final int timestamp;
  @override
  final int? id;

  @override
  String toString() {
    return 'MyNote(title: $title, content: $content, color: $color, timestamp: $timestamp, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyNote &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_MyNoteCopyWith<_$_MyNote> get copyWith =>
      __$$_MyNoteCopyWithImpl<_$_MyNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyNoteToJson(
      this,
    );
  }
}

abstract class _MyNote implements MyNote {
  const factory _MyNote(
      {required final String title,
      required final String content,
      required final int color,
      required final int timestamp,
      final int? id}) = _$_MyNote;

  factory _MyNote.fromJson(Map<String, dynamic> json) = _$_MyNote.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  int get color;
  @override
  int get timestamp;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MyNoteCopyWith<_$_MyNote> get copyWith =>
      throw _privateConstructorUsedError;
}
