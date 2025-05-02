import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(child: DemoText()),
        ),
      ),
    );
  }
}

class DemoText extends StatelessWidget {
  const DemoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra '
      'các thuộc tính như maxLines, overflow, textAlign và nhiều hơn nữa.'
      'các thuộc tính như maxLines, overflow, textAlign và nhiều hơn nữa.',

      // Căn lề văn bản
      textAlign: TextAlign.justify,

      // Số dòng tối đa
      maxLines: 3,

      // Cách xử lý khi văn bản tràn dòng
      overflow: TextOverflow.ellipsis,

      // Hướng của văn bản
      textDirection: TextDirection.ltr,

      // Có tự động xuống dòng không
      softWrap: true,

      // Phóng to/thu nhỏ văn bản theo tỉ lệ
      textScaler: TextScaler.linear(3),

      // Gán nhãn cho trình đọc màn hình
      semanticsLabel: 'Đây là nhãn cho trình đọc màn hình',

      // Thiết lập ngôn ngữ/địa phương
      locale: Locale('en', 'US'),

      // Kiểm soát khoảng cách dòng chi tiết hơn
      strutStyle: StrutStyle(),

      // Thiết lập kiểu chữ
      style: TextStyle(),
    );
  }
}
