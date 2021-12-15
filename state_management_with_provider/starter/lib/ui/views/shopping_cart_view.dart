import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/core/models/products.dart';
import 'package:shopping_app/ui/shared/default_scaffold.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Consumer<Products>(
        builder: (context, model, child) => model.shoppingCartProducts.isEmpty
            ? const Center(
                child: Text(
                  'Shopping Cart is Empty',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) => Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => model.addToShoppingCart(
                                id: model.shoppingCartProducts[index].id,
                                count: -1),
                            icon: const Icon(Icons.exposure_minus_1),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            child: Image.network(
                              model.shoppingCartProducts[index].imageUrl,
                              //height: 50,
                              alignment: Alignment.center,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          IconButton(
                            onPressed: () => model.addToShoppingCart(
                                id: model.shoppingCartProducts[index].id,
                                count: 1),
                            icon: const Icon(Icons.exposure_plus_1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            model.shoppingCartProducts[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'RM${model.shoppingCartProducts[index].price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${model.shoppingCartProducts[index].countInCart} x',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'RM${model.shoppingCartProducts[index].price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              ' = RM${model.shoppingCartProducts[index].price * model.shoppingCartProducts[index].countInCart}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: model.shoppingCartProducts.length,
                separatorBuilder: (context, index) => const Divider(),
              ),
      ),
    );
  }
}
