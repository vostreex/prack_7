import 'package:flutter/material.dart';
import 'package:prack_7/features/notes/screens/settings_screen.dart';
import '../screens/notes_list_screen.dart';
import '../screens/add_note_screen.dart';

class NotesContainer extends StatefulWidget {
  const NotesContainer({super.key});
  @override
  State<NotesContainer> createState() => _NotesContainerState();
}
class _NotesContainerState extends State<NotesContainer> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    NotesListScreen(),
    AddNoteScreen(),
    SettingsScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes App')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Заметки'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Добавить'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}