
import 'package:hive/hive.dart';

part 'todo_model.g.dart';
@HiveType(typeId: 0)
class TodoModel extends HiveObject  {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitel;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  TodoModel(
      {required this.title,
      required this.subTitel,
      required this.date,
      required this.color});
}

