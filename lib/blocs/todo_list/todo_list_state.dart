part of 'todo_list_bloc.dart';

class TodoListState extends Equatable{
  final List<Todo>todos;

  const TodoListState({required this.todos});

  factory TodoListState.initial(){
    return TodoListState(todos: [
      Todo(id: '1', desc: 'Flutter Projesi Hazırla'),
      Todo(id: '2', desc: 'Flutter Projesi Dokümanı Hazırla'),
      Todo(id: '3', desc: 'Projeni Sun'),
    ]);
  }

  @override
  List<Object> get props => [todos];

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  String toString() {
    return 'TodoListState{todos: $todos}';
  }
}
