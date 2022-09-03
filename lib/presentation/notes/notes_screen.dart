import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/ui/colors.dart';

import 'components/note_item.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            NoteItem(
              note: MyNote(
                  title: 'title 1',
                  content: 'content 1',
                  color: wisteria.value,
                  timestamp: 1), onDeleteTap: null,
            ),
            NoteItem(
              note: MyNote(
                  title: 'title 2',
                  content: 'content 2',
                  color: skyblue.value,
                  timestamp: 2), onDeleteTap: null,
            ),
          ],
        ),
      ),
    );
  }
}
