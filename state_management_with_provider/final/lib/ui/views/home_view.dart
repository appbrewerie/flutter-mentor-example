import 'package:flutter/material.dart';
import 'package:shopping_app/ui/widgets/default_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Happy Shopping',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset('assets/images/1.jpg'),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/catalogue');
              },
              child: const Text(
                'View Catalogue',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                padding: const EdgeInsets.all(20),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/2.jpg'),
          const SizedBox(height: 16),
          Image.asset('assets/images/3.jpg'),
        ],
      ),
    );
  }
}
