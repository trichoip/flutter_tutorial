import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // SizedBox là một widget dùng để tạo kích thước cố định hoặc chèn khoảng trống giữa các widget.
        body: SizedBox(
          width: 200,
          height: 200,
          child: Container(
            color: Colors.amber,
            child: const Center(child: Text('Hello World')),
          ),
        ),
      ),
    );
  }
}
