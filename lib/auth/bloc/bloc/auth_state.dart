part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class  Authsuccess extends AuthState{}
final class AuthFailure extends AuthState{}