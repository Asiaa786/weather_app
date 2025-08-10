 

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) { 
      on<AuthLoginRequested>((event, emit)async{
        // i cna access the email and password through this event
        final email = event.email;
        final pasword = event.password;
        // email validation using regex
        if(pasword.length<6){
          emit(AuthFailure("Password cant be less then 6 characters"));
          return;

        } await Future.delayed(Duration(seconds: 1));

      });
    });
  }
}
