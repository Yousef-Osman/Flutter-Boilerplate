import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = 'ProductDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productsProvider = Provider.of<Products>(context);
    final product = productsProvider.findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(
                      icon: Icon(Icons.favorite_border_outlined),
                      onPressed: () {},
                      color: Theme.of(context).accentColor,
                    ),
                    title: Text(product.title),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.shopping_cart_outlined),
                      onPressed: () {},
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      product.description,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.asset(product.imageUrl),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('Buy'),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          )),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
