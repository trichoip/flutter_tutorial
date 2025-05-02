import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // Khoảng cách bên trong Container
          padding: EdgeInsets.all(20),
          //Khoảng cách bên ngoài Container
          margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
          width: 100,
          height: 300,
          color: Colors.blue,
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
