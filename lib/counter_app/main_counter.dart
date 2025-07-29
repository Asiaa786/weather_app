// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_app/counter_app/bloc/counter_bloc.dart';
// import 'package:weather_app/counter_app/cubit/counter_cubit.dart';
// import 'package:weather_app/counter_app/home.dart';

// void main() {
//   runApp(const  MyApp());
// }

// class  MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (_) => CounterCubit()),
//         BlocProvider(create: (_) => CounterBloc()),
//       ],

//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         ),
//         home: MyHomePage(),
//       ),
//     );
//   }
// }
