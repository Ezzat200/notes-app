import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_todo_cubit_state.dart';

class AddTodoCubitCubit extends Cubit<AddTodoCubitState> {
  AddTodoCubitCubit() : super(AddTodoCubitInitial());
}
