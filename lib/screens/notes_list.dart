import 'package:flutter/material.dart';
import 'package:notes/models/note.dart';
import 'package:notes/screens/note_details.dart';
import 'package:notes/screens/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({
    super.key,
    required this.notes,
  });

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    void selectNote(BuildContext context, Note note) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => NoteDetailsScreen(note: note)));
    }

    if (notes.isEmpty) {
      return Center(
        child: Text(
          'No notes added yet',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }

    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (ctx, index) => NoteItem(
        myNote: notes[index],
        onSelectNote: (myNote) {
          selectNote(context, myNote);
        },
      ),
    );
  }
}
