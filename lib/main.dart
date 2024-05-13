import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesappp/constants/colors.dart';
import 'package:notesappp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesappp/models/notes_model.dart';
import 'package:notesappp/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappp/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(notesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
