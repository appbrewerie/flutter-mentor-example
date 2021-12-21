import 'package:flutter/material.dart';
import 'package:shopping_app/core/models/product.dart';
import 'package:shopping_app/ui/widgets/default_scaffold.dart';

class SingleProductView extends StatelessWidget {
  final Product _product;

  const SingleProductView({
    Key? key,
    required product,
  })  : _product = product,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: _product.name,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(_product.imageUrl),
            const SizedBox(height: 15),
            const Text(
              'Product Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '${_product.description}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              icon: const Icon(Icons.payment),
              label: const Text(
                'Add to Cart',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              ),
              onPressed: () {
                // TODO - implement addToShoppingCart
              },
              style: ElevatedButton.styleFrom(
                elevation: 8,
                fixedSize: const Size(250, 75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
