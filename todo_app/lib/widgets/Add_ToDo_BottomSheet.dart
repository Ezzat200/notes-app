import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubits/cubit/add_todo_cubit_cubit.dart';
import 'package:todo_app/widgets/Add_Todo_Form.dart';

class AddTodoBottomSheet extends StatelessWidget {
  const AddTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTodoCubitCubit(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocConsumer<AddTodoCubitCubit, AddTodoCubitState>(
          listener: (context, state) {
            if (state is AddTodoCubitFailer) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddTodoCubitSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(child: AddTodoForm());
          },
        ),
      ),
    );
  }
}
