import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/ui/app_router.dart';
import 'package:shopping_app/ui/shared/theme.dart';
import 'package:shopping_app/core/models/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'Shopping App',
        theme: myTheme,
        initialRoute: '/',
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
