import 'package:flutter_boilerplate/shopApp/models/product.dart';
import 'package:flutter/foundation.dart';

class Products with ChangeNotifier{
  final List<Product> _productList = [
    Product(
      id: 'p1',
      title: 'Omega Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 29.99,
      imageUrl:
          'assets/shopapp/01.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Luxury Watch',
      description: 'A particularly appealing design touch on the Planet Ocean',
      price: 59.99,
      imageUrl:
          'assets/shopapp/02.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Diver Watch',
      description:
          'You’ll have a great view of the handsomely decorated Omega.',
      price: 19.99,
      imageUrl:
          'assets/shopapp/03.jpeg',
    ),
    Product(
      id: 'p4',
      title: 'Sport Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 19.99,
      imageUrl:
          'assets/shopapp/04.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Luxury Watch',
      description: 'A particularly appealing design touch on the Planet Ocean',
      price: 59.99,
      imageUrl:
          'assets/shopapp/05.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Omega Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 29.99,
      imageUrl:
          'assets/shopapp/06.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Diver Watch',
      description:
          'You’ll have a great view of the handsomely decorated Omega.',
      price: 19.99,
      imageUrl:
          'assets/shopapp/07.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Sport Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 49.99,
      imageUrl:
          'assets/shopapp/08.jpg',
    ),
    Product(
      id: 'p9',
      title: 'Sport Watch',
      description: 'A particularly appealing design touch on the Planet Ocean.',
      price: 49.99,
      imageUrl:
          'assets/shopapp/09.jpg',
    ),
    Product(
      id: 'p10',
      title: 'Sport Watch',
      description:
          'You’ll have a great view of the handsomely decorated Omega.',
      price: 49.99,
      imageUrl:
          'assets/shopapp/10.jpg',
    ),
    Product(
      id: 'p11',
      title: 'Sport Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 49.99,
      imageUrl:
          'assets/shopapp/11.jpg',
    ),
    Product(
      id: 'p12',
      title: 'Sport Watch',
      description:
          'You’ll have a great view of the handsomely decorated Omega.',
      price: 49.99,
      imageUrl:
          'assets/shopapp/02.jpg',
    ),
  ];

  List<Product> get productList{
    return [... _productList];
  }

  addProduct(Product newProduct){
    _productList.add(newProduct);
    notifyListeners();
  }

  Product findById(String id){
    return _productList.firstWhere((a) => a.id == id);
  }
}