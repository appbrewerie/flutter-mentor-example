import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shopping_app/core/models/product.dart';

class Products extends ChangeNotifier {
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

  List<Product> _shoppingCartProducts = [];

  List<Product> get products => UnmodifiableListView(_products);
  List<Product> get shoppingCartProducts =>
      UnmodifiableListView(_shoppingCartProducts);

  Product getProductById(String id) {
    return _products.firstWhere((product) => product.id == id);
  }

  void addToShoppingCart({required String id, required int count}) {
    final product;

    if (_shoppingCartProducts.contains(getProductById(id)) ||
        _products.contains(getProductById(id))) {
      product = products.firstWhere((e) => e.id == id);
    } else {
      return;
    }

    if (_shoppingCartProducts.contains(getProductById(id))) {
      product.addCountInCart(count);
    } else {
      _shoppingCartProducts.add(getProductById(id));
      product.addCountInCart(count);
    }

    if (product.countInCart <= 0) {
      removeFromShoppingCart(id: product.id);
    }

    notifyListeners();
  }

  void removeFromShoppingCart({required String id}) {
    if (_shoppingCartProducts.contains(getProductById(id))) {
      _shoppingCartProducts.removeWhere((e) => e.id == id);
      notifyListeners();
    }
  }
}
