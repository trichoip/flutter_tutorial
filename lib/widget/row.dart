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
        body: Container(
          color: Colors.grey.shade200,
          height: 200,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,

            spacing: 30,
            children: [
              Text('A', style: TextStyle(fontSize: 24)),
              Text('B', style: TextStyle(fontSize: 32)),
              Text('C', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
