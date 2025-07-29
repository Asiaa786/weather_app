import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/todo/cubit/todo_cubit.dart';

class TodoAddPage extends StatelessWidget {
  TodoAddPage({super.key});

  final TextEditingController todoListController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Center vertically
            children: [
              TextField(
                controller: todoListController,
                decoration: InputDecoration(
                  hintText: "Todo",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<TodoCubit>().addTodo(
                    todoListController.text.trim(),
                  );
                  Navigator.of(context).pop();
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
