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
          width: 200,
          child: const Column(
            // Căn chỉnh các widget con theo trục chính (vertical)
            mainAxisAlignment: MainAxisAlignment.center,

            // Chiều dài của Column theo trục chính.
            mainAxisSize: MainAxisSize.max,

            // Căn chỉnh theo trục phụ (horizontal).
            crossAxisAlignment: CrossAxisAlignment.end,

            textDirection: TextDirection.ltr,

            // Hướng của trục dọc
            verticalDirection: VerticalDirection.up,

            //  tự động thêm khoảng cách giữa các widget con.
            spacing: 25,
            children: [
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
              Text('Item 4'),
              Text('Item 5'),
            ],
          ),
        ),
      ),
    );
  }
}
