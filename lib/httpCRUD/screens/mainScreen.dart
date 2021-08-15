import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/httpCRUD/services/httpService.dart';
import 'package:flutter_boilerplate/httpCRUD/screens/detailsScreen.dart';

class HttpCRUD extends StatefulWidget {
  @override
  _HttpCRUDState createState() => _HttpCRUDState();
}

class _HttpCRUDState extends State<HttpCRUD> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Orders'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
        child: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      elevation: 1.5,
                      child: ListTile(
                        isThreeLine: true,
                        title: Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data[index].socde.toString(),
                                  style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  snapshot.data[index].csCustomerName,
                                  style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500),
                                ),
                              ]),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.fromLTRB(0, 3, 0, 10),
                          child: Text(
                            snapshot.data[index].itmNam,
                            style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w400),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            DetailsScreen.routeName,
                            arguments: snapshot.data[index],
                          );
                        },
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
