import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _opacity,

                // Thời gian chuyển động
                duration: const Duration(seconds: 2),

                // Đường cong chuyển động
                curve: Curves.bounceInOut,

                // Gọi sau khi animation kết thúc
                onEnd: () => print('Hoàn tất hiệu ứng mờ'),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleOpacity,
                child: const Text('Chuyển đổi opacity'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
