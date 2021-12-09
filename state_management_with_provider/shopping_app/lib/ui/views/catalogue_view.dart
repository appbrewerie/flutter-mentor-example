import 'package:flutter/material.dart';
import 'package:shopping_app/ui/shared/default_scaffold.dart';
import 'package:shopping_app/ui/views/product_list_view.dart';

class CatalogueView extends StatelessWidget {
  CatalogueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: 'Catalogue',
      body: ProductListView(),
    );
  }
}
