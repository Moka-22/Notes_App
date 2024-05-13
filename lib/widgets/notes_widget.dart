import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesappp/widgets/custom_appbar.dart';
import 'package:notesappp/widgets/notes_list.dart';

class NotesWidgets extends StatefulWidget {
  const NotesWidgets({super.key});

  @override
  State<NotesWidgets> createState() => _NotesWidgetsState();
}

class _NotesWidgetsState extends State<NotesWidgets> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(
            title: 'Notes',
            icon: Icons.search_outlined,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
