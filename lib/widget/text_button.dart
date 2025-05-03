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
        body: Center(
          // y hệt như ElevatedButton, nhưng không có màu nền, elevation, shadowColor
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              // elevation: 10,
              // shadowColor: Colors.red,
              // backgroundColor: Colors.blue,
            ),
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
