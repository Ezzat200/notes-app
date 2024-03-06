import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Add_ToDo_BottomSheet.dart';
import 'package:todo_app/widgets/Todo_Body.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16) 
            ),
            context: context, builder: (context){
            return const AddTodoBottomSheet();
          });
        }, child:const Icon(Icons.add)),
      body:const Padding(
        padding:  EdgeInsets.all(24),
        child: TodoBody(),
      ),
    );
  }
}
