import 'package:flutter/material.dart';
import 'package:note_app/ui/colors.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({super.key});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titlecontroller = TextEditingController();
  final _contentcontroller = TextEditingController();

  @override
  void dispose() {
    _titlecontroller.dispose();
    _contentcontroller.dispose();
    super.dispose();
  }

  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyblue,
    illusion,
  ];

  Color _color = roseBud;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 48),
            duration: const Duration(milliseconds: 500),
        color: _color,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: noteColors
                  .map(
                    (color) => InkWell(
                      onTap: () {
                        setState(() {
                          _color = color;
                        });
                      },
                      child: _buildBackgroundColor(
                          color: color, selected: _color == color),
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
        onPressed: () {},
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
