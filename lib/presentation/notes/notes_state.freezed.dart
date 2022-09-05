// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteState {
  List<MyNote> get notes => throw _privateConstructorUsedError;
  NoteOrder<dynamic> get noteOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res>;
  $Res call({List<MyNote> notes, NoteOrder<dynamic> noteOrder});

  $NoteOrderCopyWith<dynamic, $Res> get noteOrder;
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res> implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  final NoteState _value;
  // ignore: unused_field
  final $Res Function(NoteState) _then;

  @override
  $Res call({
    Object? notes = freezed,
    Object? noteOrder = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<MyNote>,
      noteOrder: noteOrder == freezed
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
abstract class _$$_NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$$_NoteStateCopyWith(
          _$_NoteState value, $Res Function(_$_NoteState) then) =
      __$$_NoteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MyNote> notes, NoteOrder<dynamic> noteOrder});

  @override
  $NoteOrderCopyWith<dynamic, $Res> get noteOrder;
}

/// @nodoc
class __$$_NoteStateCopyWithImpl<$Res> extends _$NoteStateCopyWithImpl<$Res>
    implements _$$_NoteStateCopyWith<$Res> {
  __$$_NoteStateCopyWithImpl(
      _$_NoteState _value, $Res Function(_$_NoteState) _then)
      : super(_value, (v) => _then(v as _$_NoteState));

  @override
  _$_NoteState get _value => super._value as _$_NoteState;

  @override
  $Res call({
    Object? notes = freezed,
    Object? noteOrder = freezed,
  }) {
    return _then(_$_NoteState(
      notes: notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<MyNote>,
      noteOrder: noteOrder == freezed
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder<dynamic>,
    ));
  }
}

/// @nodoc

class _$_NoteState implements _NoteState {
  const _$_NoteState(
      {required final List<MyNote> notes, required this.noteOrder})
      : _notes = notes;

  final List<MyNote> _notes;
  @override
  List<MyNote> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final NoteOrder<dynamic> noteOrder;

  @override
  String toString() {
    return 'NoteState(notes: $notes, noteOrder: $noteOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteState &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other.noteOrder, noteOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(noteOrder));

  @JsonKey(ignore: true)
  @override
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      __$$_NoteStateCopyWithImpl<_$_NoteState>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  const factory _NoteState(
      {required final List<MyNote> notes,
      required final NoteOrder<dynamic> noteOrder}) = _$_NoteState;

  @override
  List<MyNote> get notes;
  @override
  NoteOrder<dynamic> get noteOrder;
  @override
  @JsonKey(ignore: true)
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
