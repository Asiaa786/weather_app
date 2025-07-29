import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  int increnment() {
    emit(state + 1);

    return 0;
  }

  void decrement() {
    if (state == 0) {
      return ;
    }
    emit(state - 1);
  }
}
