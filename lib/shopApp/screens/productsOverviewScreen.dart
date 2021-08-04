import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shopApp/models/product.dart';
import 'package:flutter_boilerplate/shopApp/widgets/productItem.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> productList = [
    Product(
      id: 'p1',
      title: 'Omega Watch',
      description:
          'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
      price: 29.99,
      imageUrl:
          'https://www.dreamchrono.com/wp-content/uploads/2014/03/4-omega-seamaster.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Luxury Watch',
      description: 'A particularly appealing design touch on the Planet Ocean',
      price: 59.99,
      imageUrl:
          'https://www.luxurywatchesbrand.com/wp-content/uploads/1474/1057e64b094a5ee.jpg',
    ),
    // Product(
    //   id: 'p3',
    //   title: 'Diver Watch',
    //   description:
    //       'You’ll have a great view of the handsomely decorated Omega.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://timeandtidewatches.com/wp-content/uploads/2014/09/MANOFSTEELHaighHastingsWatch-M2-Diver.jpeg',
    // ),
    // Product(
    //   id: 'p4',
    //   title: 'Sport Watch',
    //   description:
    //       'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://thegadgetflow.com/wp-content/uploads/2016/05/Alvieri-02.jpg',
    // ),
    // Product(
    //   id: 'p5',
    //   title: 'Luxury Watch',
    //   description: 'A particularly appealing design touch on the Planet Ocean',
    //   price: 59.99,
    //   imageUrl:
    //       'https://www.watchclub.com/upload/watches/originali/watch-club-omega-seamaster-300-brand-new-complete-set-ref-21032422001001-year-2019-13530-2.jpg',
    // ),
    // Product(
    //   id: 'p6',
    //   title: 'Omega Watch',
    //   description:
    //       'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
    //   price: 29.99,
    //   imageUrl:
    //       'https://pictures.topspeed.com/IMG/jpg/201010/aston-martin-amvox3-.jpg',
    // ),
    // Product(
    //   id: 'p7',
    //   title: 'Diver Watch',
    //   description:
    //       'You’ll have a great view of the handsomely decorated Omega.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://www.dreamchrono.com/wp-content/uploads/2014/03/4-omega-seamaster.jpg',
    // ),
    // Product(
    //   id: 'p8',
    //   title: 'Sport Watch',
    //   description:
    //       'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://timetransformed.com/wp-content/uploads/2014/10/9_speedmaster_57-2000-e1414644506649.jpg',
    // ),
    // Product(
    //   id: 'p9',
    //   title: 'Sport Watch',
    //   description: 'A particularly appealing design touch on the Planet Ocean.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://www.matthewbaininc.com/assets/images/watches/11566/11566-z6.jpg',
    // ),
    // Product(
    //   id: 'p10',
    //   title: 'Sport Watch',
    //   description:
    //       'You’ll have a great view of the handsomely decorated Omega.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://www.bobswatches.com/rolex-blog/wp-content/uploads/2018/01/Omega_SeaMaster_5D3_0681-3-Edit.jpg',
    // ),
    // Product(
    //   id: 'p11',
    //   title: 'Sport Watch',
    //   description:
    //       'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://www.thelifeofluxury.com/images/jaermnn_stubi_seve_ballesteros_golf_watch.jpg',
    // ),
    // Product(
    //   id: 'p12',
    //   title: 'Sport Watch',
    //   description:
    //       'You’ll have a great view of the handsomely decorated Omega.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://relojesmore.com/u_file/1908/products/21/223893993e.jpg',
    // ),
    // Product(
    //   id: 'p13',
    //   title: 'Omega Watch',
    //   description: 'A particularly appealing design touch on the Planet Ocean',
    //   price: 29.99,
    //   imageUrl:
    //       'https://www.dreamchrono.com/wp-content/uploads/2014/03/4-omega-seamaster.jpg',
    // ),
    // Product(
    //   id: 'p14',
    //   title: 'Luxury Watch',
    //   description:
    //       'The Planet Ocean GMT offers plenty of practicality encased in a fantastic modern Omega watch.',
    //   price: 59.99,
    //   imageUrl:
    //       'https://www.luxurywatchesbrand.com/wp-content/uploads/1474/1057e64b094a5ee.jpg',
    // ),
    // Product(
    //   id: 'p15',
    //   title: 'Diver Watch',
    //   description: 'Warm and cozy - exactly what you need for the winter.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://timeandtidewatches.com/wp-content/uploads/2014/09/MANOFSTEELHaighHastingsWatch-M2-Diver.jpeg',
    // ),
    // Product(
    //   id: 'p16',
    //   title: 'Sport Watch',
    //   description: 'A particularly appealing design touch on the Planet Ocean',
    //   price: 19.99,
    //   imageUrl:
    //       'https://thegadgetflow.com/wp-content/uploads/2016/05/Alvieri-02.jpg',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('LightHouse'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: productList.length,
        itemBuilder: (context, i) => ProductItem(
          product: productList[i],
          // id: productList[i].id,
          // title: productList[i].title,
          // imageUrl: productList[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
