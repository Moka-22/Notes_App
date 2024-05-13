import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesappp/constants/colors.dart';
import 'package:notesappp/models/notes_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
    List<NoteModel>? notes;
  fetchAllNotes() {
      var noteBox = Hive.box<NoteModel>(notesBox);
      notes = noteBox.values.toList();
      emit(NotesSuccess());
  }
}
