import '../features/notes/models/note.dart';

class NoteRepository {
  static final List<Note> _notes = [];

  static List<Note> get notes => _notes;

  static void addNote(Note note) {
    _notes.add(note);
  }

  static void updateNote(String id, Note updatedNote) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = updatedNote;
    }
  }

  static void deleteNote(String id) {
    _notes.removeWhere((note) => note.id == id);
  }
}