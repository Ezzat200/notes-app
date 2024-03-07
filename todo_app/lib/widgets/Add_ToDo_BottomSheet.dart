import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:todo_app/cubits/cubit/add_todo_cubit_cubit.dart';
import 'package:todo_app/widgets/Add_Todo_Form.dart';


class AddTodoBottomSheet extends StatelessWidget {
  const AddTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: BlocConsumer<AddTodoCubitCubit, AddTodoCubitState>(
          listener: (context, state) {
            if(state is AddTodoCubitFailer){
              print('failed ${state.errorMessage}');
            }
            if(state is AddTodoCubitSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall:state is AddTodoCubitLoading?true:false ,
              child: const AddTodoForm());
          },
        ),
      ),
    );
  }
}
