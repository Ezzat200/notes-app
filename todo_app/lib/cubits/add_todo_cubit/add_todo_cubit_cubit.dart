import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/constans.dart';
import 'package:todo_app/models/todo_model.dart';

part 'add_todo_cubit_state.dart';

class AddTodoCubitCubit extends Cubit<AddTodoCubitState> {
  AddTodoCubitCubit() : super(AddTodoCubitInitial());
  addtodo(TodoModel todo) async{
    emit(AddTodoCubitLoading());
    try {
      var todoBox = Hive.box<TodoModel>(kTodoBox);
      emit(AddTodoCubitSuccess());
      await todoBox.add(todo);
    } catch (e) {
     emit(AddTodoCubitFailer(errorMessage: e.toString()));      
    }
  }
}
