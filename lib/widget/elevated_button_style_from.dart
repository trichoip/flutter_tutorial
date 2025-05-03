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
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.blue,

              // Kiểu chữ
              textStyle: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),

              // Độ nổi (bóng đổ)
              elevation: 30,

              // Màu bóng đổ
              shadowColor: Colors.amberAccent,

              // Màu phủ trên nền (Material 3)
              surfaceTintColor: Colors.black45,

              // Padding bên trong nút
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 25),

              // Hình dạng nút
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              overlayColor: Colors.red.withValues(alpha: 0.5),

              // Kích thước tối thiểu
              minimumSize: const Size(200, 200),

              // Kích thước icon
              iconSize: 75,

              // Màu icon
              iconColor: Colors.red,

              // Vị trí icon (chỉ dùng được khi có icon)
              iconAlignment: IconAlignment.start,

              // Viền nút
              side: const BorderSide(
                color: Colors.blue,
                width: 5,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),

              // Con trỏ chuột khi hover
              enabledMouseCursor: SystemMouseCursors.cell,

              // Căn lề nội dung trong nút
              alignment: Alignment.bottomRight,

              // Thời gian hoạt ảnh khi đổi trạng thái
              animationDuration: const Duration(milliseconds: 300),

              // Cho phép phản hồi rung/âm thanh
              enableFeedback: true,

              // Hiệu ứng splash
              splashFactory: InkRipple.splashFactory,
            ),
            onPressed: () {},
            child: const Text('data'),
          ),
        ),
      ),
    );
  }
}
