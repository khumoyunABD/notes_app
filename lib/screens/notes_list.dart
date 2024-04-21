import 'package:flutter/material.dart';
import 'package:notes/screens/add_note.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заметки'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 14,
          bottom: 14,
        ),
        child: IconButton.outlined(
          // style: OutlinedButton.styleFrom(
          //   backgroundColor: Colors.deepPurple,
          // ),
          //alignment: Alignment.center,
          //padding: EdgeInsets.all(40),
          iconSize: 40,
          //color: Colors.orangeAccent,
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const AddNoteScreen(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Text(
          'Заметки',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
