import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/counter_bloc.dart';
import 'package:weather_app/bloc/counter_event.dart';
 

class Inc_Dec_Button extends StatelessWidget {
  const Inc_Dec_Button({super.key});
 
  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return  Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // onPressed: () => counterBloc.increnment(), // using cubit
            onPressed: ()=> counterBloc.add(CounterIncrement()), // using bloc
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), SizedBox(height: 10,),
          FloatingActionButton(
            // onPressed: () => counterCubit.decrement(),
            onPressed: () => counterBloc .add(Counterdecrement()),

            tooltip: 'Increment',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}