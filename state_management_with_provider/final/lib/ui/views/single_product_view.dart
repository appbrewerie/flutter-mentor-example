import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/core/models/products.dart';
import 'package:shopping_app/ui/widgets/default_scaffold.dart';

class SingleProductView extends StatelessWidget {
  const SingleProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String productId =
        ModalRoute.of(context)!.settings.arguments as String;
    final product =
        Provider.of<Products>(context, listen: false).getProductById(productId);

    return DefaultScaffold(
      title: product.name,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(product.imageUrl),
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
              '${product.description}',
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
                'Buy Now',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              ),
              onPressed: () {
                Provider.of<Products>(context, listen: false)
                    .addToShoppingCart(id: product.id, count: 1);
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
