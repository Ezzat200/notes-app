import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/constans.dart';
import 'package:todo_app/models/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
    fetchAllTodo(TodoModel todo) {
   
    try {
      var todoBox = Hive.box<TodoModel>(kTodoBox);
   List<TodoModel>todos = todoBox.values.toList();
      emit(TodoSuccess(todos));
       todoBox.add(todo);
    } catch (e) {
     emit(TodoFailer(errMessage: e.toString()));      
    }
  }
}


