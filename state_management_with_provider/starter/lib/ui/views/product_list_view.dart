import 'package:flutter/material.dart';
import 'package:shopping_app/core/models/product.dart';
import 'package:shopping_app/ui/views/single_product_view.dart';

class ProductListView extends StatelessWidget {
  final List<Product> _products;

  const ProductListView({
    Key? key,
    required products,
  })  : _products = products,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  // again, passing through constructor
                  SingleProductView(product: _products[index]),
            ),
          ),
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 100,
                  child: Image.network(_products[index].imageUrl),
                ),
                const SizedBox(height: 15),
                Text(
                  '${_products[index].name} : RM${_products[index].price}',
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
      itemCount: _products.length,
    );
  }
}
