import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.amber,
          child: Center(
            // nếu không widthFactor và heightFactor thì Center sẽ chiếm toàn bộ chiều rộng và chiều cao của widget cha
            widthFactor: 2,
            heightFactor: 4,
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
