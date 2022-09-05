import 'package:flutter/material.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/ui/colors.dart';

class NoteItem extends StatelessWidget {
  final MyNote note;
  final Function? onDeleteTap;
  const NoteItem({super.key, required this.note, required this.onDeleteTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(note.color)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6!.apply(
                    color: darkGray,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  note.content,
                  style: Theme.of(context).textTheme.bodyText2!.apply(
                    color: darkGray,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                onDeleteTap?.call();
              },
              child: const Icon(
                Icons.delete,
                color: darkGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
