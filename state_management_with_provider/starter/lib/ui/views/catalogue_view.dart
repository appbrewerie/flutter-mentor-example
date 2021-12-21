import 'package:flutter/material.dart';
import 'package:shopping_app/core/models/product.dart';
import 'package:shopping_app/ui/widgets/default_scaffold.dart';
import 'package:shopping_app/ui/views/product_list_view.dart';

class CatalogueView extends StatelessWidget {
  final List<Product> _products;

  const CatalogueView({
    Key? key,
    required products,
  })  : _products = products,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Catalogue',
      // again, products data is passed down the widget tree
      body: ProductListView(products: _products),
    );
  }
}
