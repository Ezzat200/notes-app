part of 'add_todo_cubit_cubit.dart';

@immutable
sealed class AddTodoCubitState {}

final class AddTodoCubitInitial extends AddTodoCubitState {}
final class AddTodoCubitLoading extends AddTodoCubitState {}
final class AddTodoCubitSuccess extends AddTodoCubitState {}
final class AddTodoCubitFailer extends AddTodoCubitState {
  final String   errorMessage;

  AddTodoCubitFailer({required this.errorMessage});
}

