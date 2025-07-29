import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/todo/cubit/todo_cubit.dart';
import 'package:weather_app/todo/model/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text("Todo List")),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context,  todos) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder:  (context , index){
              final todo = todos[index];
              return ListTile(
                title:  Text( todo.name.toString()),
              );

          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_todo');
        },
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
    );
  }
}
