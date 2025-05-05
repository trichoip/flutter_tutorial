import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Alignment _alignment = Alignment.topLeft;

  void _toggleAlignment() {
    setState(() {
      _alignment =
          _alignment == Alignment.topLeft
              ? Alignment.bottomRight
              : Alignment.topLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.amberAccent,
          height: 500,
          width: 500,
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: _alignment,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                onEnd: () => print('Đã di chuyển xong!'),
                // heightFactor: 2,
                // widthFactor: 2,
                child: Container(width: 200, height: 200, color: Colors.blue),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: ElevatedButton(
                  onPressed: _toggleAlignment,
                  child: const Text('Di chuyển'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
