import 'package:flutter/material.dart';
import 'httpApp/httpApp.dart';
import 'quizApp/quizApp.dart';
// import 'todoList/todoList.dart';
// import 'flutterForm/flutterForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: HttpApp(),
      // body: QuizApp(),
      // body: FlutterForm(),
      // body: TodoList(),
    );
  }
}