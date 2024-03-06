import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Edit_Todo_Body.dart';

class EditTodoView extends StatelessWidget {
  const EditTodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditTodoBody(),
    );
  }
}
