part of 'studentlist_bloc.dart';

@immutable
sealed class StudentlistEvent {}

class AddStudentEvent extends StudentlistEvent {
  final Student student;

  AddStudentEvent(this.student);
}

// Event for removing a student
class RemoveStudentEvent extends StudentlistEvent {
  final int index;

  RemoveStudentEvent(this.index);
}
