part of 'todo_cubit.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}
final class TodoLoading extends TodoState {}
final class TodoSuccess extends TodoState {
  final List<TodoModel>todos;

  TodoSuccess( this.todos);
}
final class TodoFailer extends TodoState {
  final String errMessage;

  TodoFailer({required this.errMessage});
}

