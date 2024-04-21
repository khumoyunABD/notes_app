import 'package:flutter/material.dart';
import 'package:notes/models/note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.myNote,
    required this.onSelectNote,
  });

  final Note myNote;
  final void Function(Note note) onSelectNote;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          radius: 22,
          backgroundImage: FileImage(myNote.image),
        ),
        title: Text(
          myNote.title,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          myNote.description,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        onTap: () {
          onSelectNote(myNote);
        },
      ),
    );
  }
}
