import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoDetails extends StatelessWidget {
  final String title;
  final String details;

  SoDetails(this.title, this.details);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        details,
        style: TextStyle(color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.w500),
      ),
    );
  }
}
