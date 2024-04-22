import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/logic/add_controller.dart';
import 'package:notes/screens/add_note.dart';
import 'package:notes/screens/notes_list.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  //late Future<void> _notesFuture;

  @override
  void initState() {
    super.initState();
    Get.find<AddNoteController>().loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    final userNotes = Get.find<AddNoteController>().notes;
    final userNotes1 = GetBuilder<AddNoteController>(
        builder: (controller) => NotesList(notes: userNotes));

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
        child: userNotes1,
        // FutureBuilder(
        //   future: _notesFuture,
        //   builder: (context, snapshot) =>
        //       snapshot.connectionState == ConnectionState.waiting
        //           ? const Center(
        //               child: CircularProgressIndicator(),
        //             )
        //           : NotesList(notes: userNotes),
        // ),
      ),
    );
  }
}
