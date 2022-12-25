class Todo {
  String? id;
  String? title;
  bool isDone;

  Todo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<Todo> todoList = [
    Todo(
      id: '1',
      title: 'Todo 1',
      isDone: true,
    ),
    Todo(
      id: '2',
      title: 'Todo 2',
      isDone: true,
    ),
    Todo(
      id: '3',
      title: 'Todo 3',
      isDone: false,
    ),
    Todo(
      id: '4',
      title: 'Todo 4',
      isDone: false,
    ),
    Todo(
      id: '5',
      title: 'Todo 5',
      isDone: false,
    ),
    Todo(
      id: '6',
      title: 'Todo 6',
      isDone: false,
    ),
    Todo(
      id: '7',
      title: 'Todo 7',
      isDone: false,
    ),
    Todo(
      id: '8',
      title: 'Todo 8',
      isDone: false,
    ),
    Todo(
      id: '9',
      title: 'Todo 9',
      isDone: false,
    ),
    Todo(
      id: '10',
      title: 'Todo 10',
      isDone: false,
    ),
    Todo(
      id: '11',
      title: 'Todo 11',
      isDone: false,
    ),
  ];
}