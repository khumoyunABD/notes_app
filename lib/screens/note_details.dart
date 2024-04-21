import 'package:flutter/material.dart';
import 'package:notes/models/note.dart';

class NoteDetailsScreen extends StatelessWidget {
  const NoteDetailsScreen({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(note.title),
            Image.file(note.image),
            Text(note.description),
          ],
        ),
      ),
    );
  }
}
