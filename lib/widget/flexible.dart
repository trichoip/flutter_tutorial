import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                width: 200,
                color: Colors.red,
                child: const Center(child: Text('flex: 1')),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.green,
                width: 100,
                child: const Center(child: Text('flex: 2, width: 100')),
              ),
            ),
            Flexible(
              flex: 3,
              // FlexFit.tight:	Child sẽ bị ép để chiếm hết không gian mà flex cấp cho
              // dù có cấu hình width (height voi colume) cũng k tác dụng
              fit: FlexFit.tight,
              child: Container(
                color: Colors.blue,
                width: 200,
                child: const Center(child: Text('flex: 3')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
