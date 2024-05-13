import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappp/constants/colors.dart';
import 'package:notesappp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesappp/widgets/add_note_widget.dart';
import 'package:notesappp/widgets/notes_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context, builder: (context) {
            return AddNoteButton();
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: NotesWidgets(),
    );
  }
}



