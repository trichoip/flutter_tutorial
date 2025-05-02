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
        body: Text.rich(
          TextSpan(
            text: 'Chào ',
            style: TextStyle(fontSize: 18, color: Colors.black),
            children: [
              TextSpan(
                text: 'Minh Trí',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 22,
                ),
                children: [TextSpan(text: ' ssss ')],
              ),
              TextSpan(text: ' 👋dsad'),
            ],
          ),
        ),
      ),
    );
  }
}
