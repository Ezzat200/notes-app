import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Custom_Todo_Item.dart';
import 'package:todo_app/widgets/Todo_Search.dart';

class TodoBody extends StatelessWidget {
  const TodoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const TodoSearch(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const TodoItem();
                  }),
            ))
      ],
    );
  }
}
