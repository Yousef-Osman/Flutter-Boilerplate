import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/widgets/productsGrid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('LightHouse'),
      ),
      body: ProductsGrid(),
    );
  }
}