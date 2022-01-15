// TODO Complete the file, main/float.dart
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
//   1. Perform the following operations:
//        a. Add a new todo  - i.e. when the user taps on the 'plus' button
//           This operation will navigate to the '/new' route.
//        b. Refresh the screen - i.e. when the user taps on the 'Refresh' button
//-----------------------------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';

import 'main_screen.dart';

class Float extends StatelessWidget {
  final MainScreenState _state;
  const Float({state}) : _state = state;

  @override
  Widget build(BuildContext context) {
    final _hasUser = _state.user != null;
    return _hasUser
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                tooltip: 'Add a new todo',
                child: Icon(Icons.add),
                heroTag: null,
                onPressed: () async {
                  final todo = await Navigator.pushNamed(
                    context,
                    '/new',
                  );
                  if (todo != null) _state.addTodo(todo);
                },
              ),
              FloatingActionButton(
                tooltip: 'Refresh',
                child: Icon(Icons.refresh),
                heroTag: null,
                onPressed: () => _state.populateData(_state.user),
              )
            ],
          )
        : SizedBox();
  }
}
