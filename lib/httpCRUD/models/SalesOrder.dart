import 'package:flutter/foundation.dart';

class SalesOrder{
  final int socde;     //S.O. Code
  final int sonbr;     //Sales Order No.
  final String cusCde;    //Customer Code
  final String csCustomerName;  //Customer Name
  final int sosts;     //S.O. Status
  final String soStsDsc;  //S.O. Status Discription
  final String itmNam;    //Item Name

  SalesOrder({
    @required this.socde,
    @required this.sonbr,
    @required this.cusCde,
    @required this.csCustomerName,
    @required this.sosts,
    @required this.soStsDsc,
    @required this.itmNam,
  });


  factory SalesOrder.fromJson(json) {
    return SalesOrder(
      socde: json['socde'],
      sonbr: json['sonbr'],
      cusCde: json['cusCde'],
      csCustomerName: json['csCustomerName'],
      sosts: json['sosts'],
      soStsDsc: json['soStsDsc'],
      itmNam: json['itmNam'],
    );
  }
}