import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/core/models/product.dart';
import 'package:shopping_app/core/models/products.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build product list view');
    final List<Product> products =
        Provider.of<Products>(context, listen: false).products;

    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/single-product',
              arguments: products[index].id),
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.network(products[index].imageUrl),
                const SizedBox(height: 15),
                Text(
                  '${products[index].name} : RM${products[index].price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
