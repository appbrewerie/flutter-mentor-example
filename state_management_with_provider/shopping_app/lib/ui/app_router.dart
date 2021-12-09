import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/ui/views/catalogue_view.dart';
import 'package:shopping_app/ui/views/home_view.dart';
import 'package:shopping_app/ui/views/product_list_view.dart';
import 'package:shopping_app/ui/views/shopping_cart_view.dart';
import 'package:shopping_app/ui/views/single_product_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/catalogue':
        return MaterialPageRoute(builder: (_) => CatalogueView());
      case '/product-list':
        return MaterialPageRoute(builder: (_) => ProductListView());
      case '/single-product':
        return MaterialPageRoute(
            builder: (_) => SingleProductView(), settings: settings);
      case '/shopping-cart':
        return MaterialPageRoute(builder: (_) => ShoppingCartView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('ERROR: ${settings.name} is not found')),
          ),
        );
    }
  }
}
