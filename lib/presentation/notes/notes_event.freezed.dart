// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(MyNote note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder<dynamic> noteOrder) changeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res> implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  final NotesEvent _value;
  // ignore: unused_field
  final $Res Function(NotesEvent) _then;
}

/// @nodoc
abstract class _$$LoadNotesCopyWith<$Res> {
  factory _$$LoadNotesCopyWith(
          _$LoadNotes value, $Res Function(_$LoadNotes) then) =
      __$$LoadNotesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNotesCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$LoadNotesCopyWith<$Res> {
  __$$LoadNotesCopyWithImpl(
      _$LoadNotes _value, $Res Function(_$LoadNotes) _then)
      : super(_value, (v) => _then(v as _$LoadNotes));

  @override
  _$LoadNotes get _value => super._value as _$LoadNotes;
}

/// @nodoc

class _$LoadNotes implements LoadNotes {
  const _$LoadNotes();

  @override
  String toString() {
    return 'NotesEvent.loadNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(MyNote note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder<dynamic> noteOrder) changeOrder,
  }) {
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
  }) {
    return loadNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes implements NotesEvent {
  const factory LoadNotes() = _$LoadNotes;
}

/// @nodoc
abstract class _$$DeleteNoteCopyWith<$Res> {
  factory _$$DeleteNoteCopyWith(
          _$DeleteNote value, $Res Function(_$DeleteNote) then) =
      __$$DeleteNoteCopyWithImpl<$Res>;
  $Res call({MyNote note});

  $MyNoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeleteNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$DeleteNoteCopyWith<$Res> {
  __$$DeleteNoteCopyWithImpl(
      _$DeleteNote _value, $Res Function(_$DeleteNote) _then)
      : super(_value, (v) => _then(v as _$DeleteNote));

  @override
  _$DeleteNote get _value => super._value as _$DeleteNote;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$DeleteNote(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as MyNote,
    ));
  }

  @override
  $MyNoteCopyWith<$Res> get note {
    return $MyNoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$DeleteNote implements DeleteNote {
  const _$DeleteNote(this.note);

  @override
  final MyNote note;

  @override
  String toString() {
    return 'NotesEvent.deleteNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNote &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$DeleteNoteCopyWith<_$DeleteNote> get copyWith =>
      __$$DeleteNoteCopyWithImpl<_$DeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(MyNote note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder<dynamic> noteOrder) changeOrder,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNote implements NotesEvent {
  const factory DeleteNote(final MyNote note) = _$DeleteNote;

  MyNote get note;
  @JsonKey(ignore: true)
  _$$DeleteNoteCopyWith<_$DeleteNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreNoteCopyWith<$Res> {
  factory _$$RestoreNoteCopyWith(
          _$RestoreNote value, $Res Function(_$RestoreNote) then) =
      __$$RestoreNoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$RestoreNoteCopyWith<$Res> {
  __$$RestoreNoteCopyWithImpl(
      _$RestoreNote _value, $Res Function(_$RestoreNote) _then)
      : super(_value, (v) => _then(v as _$RestoreNote));

  @override
  _$RestoreNote get _value => super._value as _$RestoreNote;
}

/// @nodoc

class _$RestoreNote implements RestoreNote {
  const _$RestoreNote();

  @override
  String toString() {
    return 'NotesEvent.restoreNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreNote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(MyNote note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder<dynamic> noteOrder) changeOrder,
  }) {
    return restoreNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
  }) {
    return restoreNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
  }) {
    return restoreNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
  }) {
    return restoreNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(this);
    }
    return orElse();
  }
}

abstract class RestoreNote implements NotesEvent {
  const factory RestoreNote() = _$RestoreNote;
}

/// @nodoc
abstract class _$$ChangeOrderCopyWith<$Res> {
  factory _$$ChangeOrderCopyWith(
          _$ChangeOrder value, $Res Function(_$ChangeOrder) then) =
      __$$ChangeOrderCopyWithImpl<$Res>;
  $Res call({NoteOrder<dynamic> noteOrder});

  $NoteOrderCopyWith<dynamic, $Res> get noteOrder;
}

/// @nodoc
class __$$ChangeOrderCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$ChangeOrderCopyWith<$Res> {
  __$$ChangeOrderCopyWithImpl(
      _$ChangeOrder _value, $Res Function(_$ChangeOrder) _then)
      : super(_value, (v) => _then(v as _$ChangeOrder));

  @override
  _$ChangeOrder get _value => super._value as _$ChangeOrder;

  @override
  $Res call({
    Object? noteOrder = freezed,
  }) {
    return _then(_$ChangeOrder(
      noteOrder == freezed
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder<dynamic>,
    ));
  }

  @override
  $NoteOrderCopyWith<dynamic, $Res> get noteOrder {
    return $NoteOrderCopyWith<dynamic, $Res>(_value.noteOrder, (value) {
      return _then(_value.copyWith(noteOrder: value));
    });
  }
}

/// @nodoc

class _$ChangeOrder implements ChangeOrder {
  const _$ChangeOrder(this.noteOrder);

  @override
  final NoteOrder<dynamic> noteOrder;

  @override
  String toString() {
    return 'NotesEvent.changeOrder(noteOrder: $noteOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOrder &&
            const DeepCollectionEquality().equals(other.noteOrder, noteOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(noteOrder));

  @JsonKey(ignore: true)
  @override
  _$$ChangeOrderCopyWith<_$ChangeOrder> get copyWith =>
      __$$ChangeOrderCopyWithImpl<_$ChangeOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(MyNote note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder<dynamic> noteOrder) changeOrder,
  }) {
    return changeOrder(noteOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
  }) {
    return changeOrder?.call(noteOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(MyNote note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder<dynamic> noteOrder)? changeOrder,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(noteOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
  }) {
    return changeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
  }) {
    return changeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(this);
    }
    return orElse();
  }
}

abstract class ChangeOrder implements NotesEvent {
  const factory ChangeOrder(final NoteOrder<dynamic> noteOrder) = _$ChangeOrder;

  NoteOrder<dynamic> get noteOrder;
  @JsonKey(ignore: true)
  _$$ChangeOrderCopyWith<_$ChangeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
