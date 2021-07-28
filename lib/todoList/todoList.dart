import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> tasks = [];
  String task;

  @override
  void initState() {
    super.initState();

    tasks.add('Visite the mountain');
    tasks.add('surf at the beatch');
    tasks.add('study flutter');
    tasks.add('develope flutter apps');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(tasks[index]),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.check_box_outline_blank),
                title: Text(tasks[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.red[600],
                  onPressed: () {
                    setState(() {
                      tasks.removeAt(index);
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add a task'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                content: TextField(
                  onChanged: (String value) {
                    task = value;
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        tasks.add(task);
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
