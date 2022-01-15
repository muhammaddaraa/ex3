// TODO Complete the model class Todo.
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
// Define the following methods:
//   a. all the getters and setters
//   b. the 'copy' constructor
//   c. the 'fromJson' constructor
//   d. the 'toJson' method
//-----------------------------------------------------------------------------------------------------------------------------

class Todo {
  String _title;
  String _description;
  bool _done;
  int _id;
  int _user;

  String get title => this._title;
  set title(String value) => this._title = value;

  get description => this._description;
  set description(value) => this.description = value;

  get done => this._done;
  set done(value) => this._done = value;

  get id => this._id;
  set id(value) => this._id = value;

  get user => this._user;
  set user(value) => this._user = value;

  Todo(
      {String title = '',
      String description = '',
      bool done = false,
      int id,
      int user})
      : _title = title,
        _description = description,
        _done = done,
        _id = id,
        _user = user;

  Todo.copy(Todo todo)
      : this(
            title: todo.title,
            description: todo.description,
            done: todo.done,
            id: todo.id,
            user: todo.user);

  Todo.fromJson(Map<String, dynamic> map)
      : this(
          title: map['title'],
          description: map['description'],
          done: map['done'],
          id: map['id'],
          user: map['user'],
        );

  Map<String, dynamic> toJson() => {
        'title': _title,
        'description': _description,
        'done': _done,
        'id': _id,
        'user': _title,
      };
}
