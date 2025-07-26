import 'package:bloc/bloc.dart';
import 'package:weather_app/bloc/counter_event.dart';
// key point
// bloc relies on events and events need to be added to the counter bloc class the emit function is also not available outside of the event handlers
//cubit relies on functions the functions need to be called and in cubit the emit function is available for all the functions

// one intresting fact about bloc and cubit 
// block extends bloc base
// cubit also extends bloc base 
// basically means that both of them the same public API and that is good thing
class CounterBloc extends Bloc <CounterEvent ,dynamic > {
  CounterBloc() :super(0){
    on <CounterIncrement>((event , emit){
      emit(state+1);
    });

    on<Counterdecrement>((event , emit){
      if(state == 0){
        return;
      }
      emit(state -1);
    });
  }
  

}