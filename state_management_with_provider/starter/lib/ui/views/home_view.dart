import 'package:flutter/material.dart';
import 'package:shopping_app/core/models/product.dart';
import 'package:shopping_app/ui/views/catalogue_view.dart';
import 'package:shopping_app/ui/widgets/default_scaffold.dart';

class HomeView extends StatelessWidget {
  // products data are stored here
  List<Product> _products = [
    Product(
      id: 'p1',
      name: 'Shoe',
      price: 30.0,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310_960_720.png',
      description:
          'This is a very comfortable shoe, can be worn by any person. Socks sold seperately',
    ),
    Product(
      id: 'p2',
      name: 'Jumper',
      price: 50.0,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/03/31/19/21/clothes-1294933_960_720.png',
      description:
          'This is a very stylish jumper, welp you can call it sweater if you prefer to...',
    ),
    Product(
      id: 'p3',
      name: 'Fridge',
      price: 1000.0,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/24/21/03/appliance-1767311_960_720.jpg',
      description:
          'This is a very energy-efficient fridge, perfect for your store-bought steaks',
    ),
    Product(
      id: 'p4',
      name: 'Spatula',
      price: 10.0,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/04/04/17/18/spatula-2202239_960_720.jpg',
      description:
          'This is a very comfortable shoe, can be worn by any person.',
    ),
    Product(
      id: 'p5',
      name: 'One Sock',
      price: 5.0,
      imageUrl:
          'https://cdn.pixabay.com/photo/2019/07/11/08/19/sock-4330279_960_720.jpg',
      description:
          'This is a comfy yet luxury sock, can be worn by any person. Pss... remember to buy a pair',
    ),
  ];

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Happy Shopping',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset('assets/images/1.jpg'),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // products data are passed to CatalogueView through constructor
                    builder: (context) => CatalogueView(products: _products),
                  ),
                );
              },
              child: const Text(
                'View Catalogue',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                padding: const EdgeInsets.all(20),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/2.jpg'),
          const SizedBox(height: 16),
          Image.asset('assets/images/3.jpg'),
        ],
      ),
    );
  }
}
