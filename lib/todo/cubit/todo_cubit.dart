import 'package:bloc/bloc.dart';
import 'package:weather_app/todo/model/todo_model.dart';
 

part 'todo_state.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title , ){
    if(title.isEmpty){
      addError( "title cant be empty");
      return;
    }
    final todo = Todo(name: title, createdAt:  DateTime.now());
    state.add(todo);
    emit([...state]);

  }
  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print( 'ToDoCubit - $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);

  }
}
