import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesappp/models/notes_model.dart';
import 'package:notesappp/widgets/custom_appbar.dart';
import 'package:notesappp/widgets/text_field.dart';

class EditNoteWidget extends StatefulWidget {
  const EditNoteWidget({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteWidget> createState() => _EditNoteWidgetState();
}

class _EditNoteWidgetState extends State<EditNoteWidget> {
   String? title;
   String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = content ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
           NotesTextField(
            onChanged: (value) {
              title = value;
            },
              hintText: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          NotesTextField(
            onChanged: (value){
              content = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
