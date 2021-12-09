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
            ? ListView.separated(
                itemBuilder: (context, index) => Card(
                  child:
                      Image.network(model.shoppingCartProducts[index].imageUrl),
                ),
                itemCount: model.shoppingCartProducts.length,
                separatorBuilder: (context, index) => const Divider(),
              )
            : const Center(
                child: Text(
                  'Shopping Cart is Empty',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
      ),
    );
  }
}
