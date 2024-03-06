import 'package:flutter/material.dart';
import 'package:todo_app/widgets/CustomText.dart';
import 'package:todo_app/widgets/Todo_Search.dart';

class EditTodoBody extends StatelessWidget {
  const EditTodoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const TodoSearch(Title: 'Edit Todo', icon: Icons.check),
          const SizedBox(
            height: 16,
          ),
          CustomText(
            hintText: 'Titel',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomText(
            hintText: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
