import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/screens/productDetailsScreen.dart';
import 'shopApp/screens/productsOverviewScreen.dart';
// import 'httpApp/httpApp.dart';
// import 'quizApp/quizApp.dart';
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
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        // primarySwatch: Colors.blue,
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
      },
      // home: HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz App'),
//       ),
//       // body: HttpApp(),
//       // body: QuizApp(),
//       // body: FlutterForm(),
//       // body: TodoList(),
//     );
//   }
// }