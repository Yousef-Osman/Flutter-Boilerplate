import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/models/product.dart';
import 'package:flutter_boilerplate/shopApp/screens/productDetailsScreen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  final Product product;

  ProductItem({
    // @required this.id,
    // @required this.title,
    // @required this.imageUrl,
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailsScreen.routeName,
              arguments: this.product,
            );
          },
          child: Image.network(
            this.product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            this.product.title,
            textAlign: TextAlign.center,
          ),
          trailing: (IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          )),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
