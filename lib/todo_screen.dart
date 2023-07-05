import 'package:flutter/material.dart';
import 'package:hello/todo.dart';
class TodoScreen extends StatefulWidget {
  static String routeName ='/Todo';

  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todolist =[
    const Todo(name: 'Joseph', id: 101, description: 'Teacher'),
    const Todo(name: 'Jane', id: 102, description: 'Teacher'),
    const Todo(name: 'Robert', id: 121, description: 'Teacher'),
    const Todo(name: 'Jack', id: 111, description: 'Teacher'),
    const Todo(name: 'Karen', id: 110, description: 'Teacher'),
    const Todo(name: 'lauren', id: 123, description: 'Teacher'),
    const Todo(name: 'Joe', id: 130, description: 'Teacher'),
    const Todo(name: 'Smith', id: 100, description: 'Teacher'),
    const Todo(name: 'Mark', id: 108, description: 'Teacher'),
    const Todo(name: 'Jill', id: 122, description: 'Teacher'),
    const Todo(name: 'Gary', id: 133, description: 'Teacher'),
    const Todo(name: 'Nancy', id: 144, description: 'Teacher'),
    const Todo(name: 'Jennie', id: 140, description: 'Teacher'),
    const Todo(name: 'Steve', id: 135, description: 'Teacher'),
    const Todo(name: 'James', id: 189, description: 'Teacher'),
    const Todo(name: 'michael', id: 177, description: 'Teacher'),
    const Todo(name: 'Kevin', id: 155, description: 'Teacher'),
    const Todo(name: 'John', id: 141, description: 'Teacher'),
    const Todo(name: 'Joseph', id: 131, description: 'Teacher'),
    const Todo(name: 'Jerry', id: 119, description: 'Teacher'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME')),
      body: Center(
        child: ListView(
          children: [
            for(final todo in todolist)
            ListTile(
              leading: Text(todo.id.toString()),
              title: Text(todo.name),
              subtitle: Text(todo.description),
              trailing: Icon(Icons.perm_identity_rounded,size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
