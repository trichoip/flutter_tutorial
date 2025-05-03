import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('OutlinedButton Example')),
        body: Center(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              // foregroundColor: Colors.blue,
              // backgroundColor: Colors.white,
            ),
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
