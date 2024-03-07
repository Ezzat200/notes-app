import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubits/cubit/add_todo_cubit_cubit.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/widgets/CustomButton.dart';
import 'package:todo_app/widgets/CustomText.dart';

class AddTodoForm extends StatefulWidget {
  const AddTodoForm({
    super.key,
  });

  @override
  State<AddTodoForm> createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomText(
            hintText: 'Titel',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomText(
            hintText: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subTitel = value;
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            text: 'Add',
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var todoModel = TodoModel(
                    title: title!,
                    subTitel: subTitel!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddTodoCubitCubit>(context).addtodo(todoModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
