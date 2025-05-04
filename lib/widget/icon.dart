import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Icon(
            Symbols.fourteen_mp, // IconData
            size: 80, // Kích thước icon
            // fill, weight, grade, opticalSize chỉ có tác dụng với Material Symbols Icons
            fill: 0.8, // Mức độ đổ đầy (chỉ áp dụng Material Symbols)
            weight: 100, // Độ đậm (áp dụng cho font variable)
            grade: 500, // Điều chỉnh độ dày nhỏ
            opticalSize: 20, // Kích thước thị giác

            color: Colors.red, // Màu icon
            shadows: [
              Shadow(
                // 	Vị trí dịch chuyển bóng (theo trục X/Y)
                offset: Offset(20, 5),
                color: Colors.yellow,
                blurRadius: 5,
              ),
            ],
            semanticLabel: 'Yêu thích', // Nhãn trợ năng
            textDirection: TextDirection.ltr,
            applyTextScaling: false,
            blendMode: BlendMode.srcOver, // Trộn màu (thường không cần chỉnh)
          ),
        ),
      ),
    );
  }
}
