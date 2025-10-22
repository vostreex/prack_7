import 'package:flutter/material.dart';
import 'package:prack_7/features/notes/state/notes_container.dart';
import 'shared/theme/app_theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: AppTheme.lightTheme,
      home: const NotesContainer(),
    );
  }
}