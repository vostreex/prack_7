import 'package:uuid/uuid.dart';

class Note {
  String id;
  String title;
  String content;
  String category;
  DateTime creationDate;

  Note({
    required this.title,
    required this.content,
    this.category = 'Без категории',
    DateTime? creationDate,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        creationDate = creationDate ?? DateTime.now();
}
