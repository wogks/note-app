import 'package:flutter/material.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class NotesViewModel with ChangeNotifier{
  final NoteRepository repository;

  NotesViewModel(this.repository);

  

}