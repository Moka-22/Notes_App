import 'package:flutter/material.dart';
import 'package:notesappp/models/notes_model.dart';
import 'package:notesappp/widgets/edit_note_widget.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteWidget(note: note,),
    );
  }
}
