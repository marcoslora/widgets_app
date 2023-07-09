import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/buttons');
              },
              child: const Text('Buttons'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card');
              },
              child: const Text('Card'),
            ),
          ],
        ),
      ),
    );
  }
}
