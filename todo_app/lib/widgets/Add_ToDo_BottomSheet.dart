import 'package:flutter/material.dart';
import 'package:todo_app/widgets/CustomButton.dart';
import 'package:todo_app/widgets/CustomText.dart';

class AddTodoBottomSheet extends StatelessWidget {
  const AddTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomText(
            hintText: 'Titel',
          ),
const SizedBox(height: 15,),
          CustomText(
            hintText: 'SubTitel',
            maxlines: 5,
          ),
          SizedBox(height: 50,),
          CustomButton(text: 'Add')
        ],
      ),
    );
  }
}