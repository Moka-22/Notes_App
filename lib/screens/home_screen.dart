import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesappp/widgets/add_note_widget.dart';
import 'package:notesappp/widgets/notes_item_widget.dart';
import 'package:notesappp/widgets/notes_list.dart';
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
        backgroundColor: Colors.grey,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
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



