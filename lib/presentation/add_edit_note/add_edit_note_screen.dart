import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddEditNoteScreen extends StatefulWidget {
  MyNote? note;
  AddEditNoteScreen({Key? key, this.note}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titlecontroller = TextEditingController();
  final _contentcontroller = TextEditingController();
  StreamSubscription? _streamSubscription;

  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyblue,
    illusion,
  ];
  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _titlecontroller.text = widget.note!.title;
      _contentcontroller.text = widget.note!.content;
    }
    Future.microtask(() {
      final viewModel = context.read<AddEditNoteViewModel>();

      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(saveNote: () {
          Navigator.pop(context, true);
        }, showSnackBar: (String message) { 
          const snackBar = SnackBar(
              content: Text('제목이나 내용이 비어 있습니다.'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
         });
      });
    });
  }

  @override
  void dispose() {
    _titlecontroller.dispose();
    _contentcontroller.dispose();
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditNoteViewModel>();
    return Scaffold(
      body: AnimatedContainer(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 48),
        duration: const Duration(milliseconds: 500),
        color: Color(viewModel.color),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: noteColors
                  .map(
                    (color) => InkWell(
                      onTap: () {
                        setState(() {
                          viewModel.onEvent(
                            AddEditNoteEvent.changeColor(color.value),
                          );
                        });
                      },
                      child: _buildBackgroundColor(
                          color: color,
                          selected: viewModel.color == color.value),
                    ),
                  )
                  .toList(),
            ),
            TextField(
              controller: _titlecontroller,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: darkGray,
                  ),
              decoration: const InputDecoration(
                hintText: '제목을 입력하세요',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: _contentcontroller,
              maxLines: null,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: darkGray,
                  ),
              decoration: const InputDecoration(
                hintText: '내용을 입력하세요',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onEvent(
            AddEditNoteEvent.saveNote(
              widget.note == null ? null : widget.note!.id,
              _titlecontroller.text,
              _contentcontroller.text,
            ),
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  Widget _buildBackgroundColor({
    required Color color,
    required bool selected,
  }) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
        border: selected
            ? Border.all(
                color: Colors.black,
                width: 3,
              )
            : null,
      ),
    );
  }
}
