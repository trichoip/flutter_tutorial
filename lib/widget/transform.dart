import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Transform(
            // Bắt buộc: Ma trận biến đổi
            transform:
                Matrix4.identity()
                  ..rotateZ(math.pi / 4)
                  ..scale(1.2, 1.2),

            // Điểm gốc dùng làm tâm biến đổi
            origin: const Offset(0, 0),

            // Vị trí căn chỉnh child trong vùng chứa trước khi biến đổi
            alignment: Alignment.bottomCenter,

            // Có áp dụng biến đổi cho sự kiện tương tác (tap, drag...) không
            transformHitTests: true,

            // Chất lượng lọc hình ảnh sau khi biến đổi
            filterQuality: FilterQuality.high,

            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text('Xoay', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
