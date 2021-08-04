import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/providers/products.dart';
import 'package:flutter_boilerplate/shopApp/widgets/productItem.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context);
    final products = productsProvider.productList;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (context, i) => ProductItem(
        id: products[i].id,
        title: products[i].title,
        imageUrl: products[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}