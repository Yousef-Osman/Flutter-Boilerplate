import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/httpCRUD/screens/detailsScreen.dart';
// import 'package:flutter_boilerplate/shopApp/providers/products.dart';
// import 'package:flutter_boilerplate/shopApp/screens/productDetailsScreen.dart';
// import 'package:provider/provider.dart';
// import 'shopApp/screens/productsOverviewScreen.dart';
import 'httpCRUD/screens/mainScreen.dart';

// import 'httpApp/httpApp.dart';
// import 'quizApp/quizApp.dart';
// import 'todoList/todoList.dart';
// import 'flutterForm/flutterForm.dart';
void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (ctx) => Products(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.purple,
//           accentColor: Colors.deepOrange,
//           // primarySwatch: Colors.blue,
//         ),
//         home: ProductsOverviewScreen(),
//         routes: {
//           ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
//         },
//         // home: HomePage(),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepOrange,
        // primarySwatch: Colors.blue,
      ),
      title: 'Http CRUD',
      home: HttpCRUD(),
      routes: {DetailsScreen.routeName: (ctx) => DetailsScreen()},
    );
  }
}
