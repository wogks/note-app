import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

import 'components/note_item.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Note',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? isSaved = await Navigator.push(
            (context),
            MaterialPageRoute(
              builder: ((context) => AddEditNoteScreen()),
            ),
          );
          if (isSaved != null && isSaved) {
            viewModel.onEvent(
              const NotesEvent.loadNotes(),
            );
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: state.notes
              .map(
                (note) => NoteItem(
                  note: note,
                  onDeleteTap: null,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
