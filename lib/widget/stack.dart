import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Stack xếp chồng các widget con từ dưới lên trên theo thứ tự trong children.
        body: Stack(
          // Căn chỉnh mặc định cho các widget không có vị trí cụ thể.
          // Các child không có Positioned sẽ căn theo alignment.
          // Các child có Positioned sẽ được đặt tại vị trí cụ thể (top, left, right, bottom).
          alignment: Alignment.bottomRight,

          // loose:	Các con không có Positioned sẽ có kích thước nhỏ nhất có thể
          // expand: Các con không có Positioned sẽ mở rộng hết Stack
          fit: StackFit.loose,

          clipBehavior: Clip.antiAlias,
          children: [
            Container(width: 300, height: 300, color: Colors.blue),
            Image.network('https://picsum.photos/200/200'),
            ElevatedButton(onPressed: () {}, child: const Text('Click 3')),

            // Positioned chỉ được dùng bên trong Stack.
            // không nên set cả left và right cùng lúc với width → sẽ gây lỗi layout vì bị mâu thuẫn.
            // có thể dùng left + top để đặt widget vào góc trái trên, hoặc bottom + right để vào góc phải dưới,
            Positioned(
              top: 10,
              right: 10,
              left: 10,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Click'),
              ),
            ),

            Positioned(
              top: 50,
              right: 50,
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Click'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
