import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {

@override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // child: ElevatedButton(
      //   child: Text('Click'),
      //   onPressed: getData,
      child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Test Card 2'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(primary:  Colors.blue),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary:  Colors.blue),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.asset('assets/flutterbg.jpg'),
                // Image.asset('assets/card-sample-image-2.jpg'),
              ],
            ),
          ),
    );
  }

  void getData() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
        Map data = jsonDecode(response.body);

    print(data);

    // print('working');
  }
}
