import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RichText(
          text: TextSpan(
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
