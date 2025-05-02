import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RichText(
          text: const TextSpan(
            text: 'Xin chào ',
            style: TextStyle(color: Colors.black, fontSize: 30),
            children: <InlineSpan>[
              TextSpan(
                text: 'Trí',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              TextSpan(text: '! Đây là ví dụ về '),
              TextSpan(
                text: 'RichText',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
