import 'package:flutter/material.dart';
import 'package:shopping_app/ui/shared/theme.dart';
import 'package:shopping_app/ui/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: myTheme,
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
