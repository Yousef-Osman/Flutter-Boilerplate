import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/httpCRUD/Widgets/soDetails.dart';
import 'package:flutter_boilerplate/httpCRUD/models/SalesOrder.dart';

class DetailsScreen extends StatelessWidget {
  static final routeName = 'DetailsScreen';

  @override
  Widget build(BuildContext context) {
    final salesOrder = ModalRoute.of(context).settings.arguments as SalesOrder;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Order Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                SoDetails('Sales Order Code', salesOrder.socde.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                // Divider(height: 0, indent: 15, endIndent: 15, color: Theme.of(context).primaryColor,),
                SoDetails('Sales Order No.', salesOrder.sonbr.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                SoDetails('Customer Code', salesOrder.cusCde.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                SoDetails('Customer Name', salesOrder.csCustomerName.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                SoDetails('Status Code', salesOrder.sosts.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                SoDetails('Status Discription', salesOrder.soStsDsc.toString()),
                Divider(height: 0, indent: 15, endIndent: 15,color: Colors.black38),
                SoDetails('Item Name', salesOrder.itmNam.toString()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
