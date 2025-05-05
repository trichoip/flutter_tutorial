import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey[300],
          height: 400,
          width: double.infinity,
          child: Align(
            child: ColoredBox(
              color: Colors.orange,
              child: Align(
                // alignment: Alignment.topLeft,

                // dựa trên hướng văn bản (LTR hoặc RTL).
                // alignment: AlignmentDirectional.topStart,

                // Căn giữa theo x=-0.5 và y=0.5 (-1 đến 1)
                // alignment: const Alignment(-0.5, 0.5),

                // Căn tại vị trí 25% chiều ngang và 75% chiều dọc
                alignment: const FractionalOffset(0.25, 0.75),

                // Chỉ có tác dụng khi cha không cấu hình width, height
                widthFactor: 2,
                heightFactor: 2,
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
