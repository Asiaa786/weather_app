import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/todo/cubit/todo_cubit.dart';
import 'package:weather_app/todo/view/todo_add.dart';
import 'package:weather_app/todo/view/todo_list.dart';

void main() {
  runApp(const ToDo());
}

class  ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit (),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: "/",
        routes: {
          '/': (_) => TodoList(),
          '/add_todo': (context) => TodoAddPage(),
        },
      ),
    );
  }
}
