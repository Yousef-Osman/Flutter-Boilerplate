import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/httpCRUD/models/SalesOrder.dart';
import 'package:http/http.dart' as http;

class HttpService extends StatelessWidget {
  final String baseUrl = 'SalesOrders';
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<List<SalesOrder>> getPosts() async {
    var data = await http.get(Uri.parse(baseUrl));
    var jsonData = json.decode(data.body);
    List<SalesOrder> salesOrders = [];

    for (var jsonPost in jsonData) {
      print(jsonPost);
      var salesOrder = SalesOrder.fromJson(jsonPost);
      salesOrders.add(salesOrder);
    }

    return salesOrders;
  }

  // Future<List<Post>> getPosts() async {
  //   Map requestBody = {
  //     'data': {'pageNumber': 1, 'pageSize': 20},
  //   };
  //   var body = json.encode(requestBody);
  //   var response = await http.get(Uri.parse(baseUrl),
  //       headers: {"Content-Type": "application/json"}, body: body);

  //   // var data = await http.get(Uri.parse(baseUrl));
  //   var jsonData = json.decode(response.body);

  //   print("${response.statusCode}");
  //   print("${response.body}");

  //   List<Post> posts = [];

  //   // for (var jsonPost in jsonData) {
  //   //   print(jsonPost);
  //   //   var post = Post.fromJson(jsonPost);
  //   //   posts.add(post);
  //   // }

  //   print(jsonData);
  //   return posts;
  // }

  // Future<String> apiRequest(String url, Map jsonMap) async {
  //   HttpClient httpClient = new HttpClient();
  //   HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
  //   request.headers.set('content-type', 'application/json');
  //   request.add(utf8.encode(json.encode(jsonMap)));
  //   HttpClientResponse response = await request.close();
  //   // todo - you should check the response.statusCode
  //   String reply = await response.transform(utf8.decoder).join();
  //   httpClient.close();
  //   return reply;
  // }

  // Future<List<Post>> getPosts() async {
  //   Map requestBody = {
  //     'data': {'pageNumber': 1, 'pageSize': 20},
  //   };
  //   // var data = await http.get(Uri.parse(baseUrl, requestBody));
  //   var data = await apiRequest(baseUrl, requestBody);
  //   print(data);
  //   // var jsonData = json.decode(data.body);
  //   List<Post> posts = [];

  //   // for (var jsonPost in jsonData) {
  //   //   print(jsonPost);
  //   //   var post = Post.fromJson(jsonPost);
  //   //   posts.add(post);
  //   // }

  //   return posts;
  // }
}
