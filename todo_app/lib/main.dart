import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_app/Simple_bloc_observer.dart';
import 'package:todo_app/constans.dart';
import 'package:todo_app/cubits/cubit/add_todo_cubit_cubit.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/views/Todo_app.dart';

void main() async{
  await Hive.initFlutter();
 Bloc.observer = SimpleBlocObserver(); 
  Hive.registerAdapter(TodoModelAdapter());
  await Hive.openBox<TodoModel>(kTodoBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       brightness: Brightness.dark
      ),
      home: const Todo(),
    );
  }
}
