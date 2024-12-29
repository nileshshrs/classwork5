import 'package:bloc/bloc.dart';
import 'package:classwork5/model/student_model.dart';
import 'package:meta/meta.dart';

part 'studentlist_event.dart';

class StudentlistBloc extends Bloc<StudentlistEvent, List<Student>> {
  StudentlistBloc() : super([]) {
    on<AddStudentEvent>((event, emit) {
      emit([...state, event.student]);
      print(state);
    });

    // Handle RemoveStudentEvent
    on<RemoveStudentEvent>((event, emit) {
      final updatedList = List<Student>.from(state);
      updatedList.removeAt(event.index);
      emit(updatedList);
    });
  }
}
