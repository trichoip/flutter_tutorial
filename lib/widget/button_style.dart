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
            style: ButtonStyle(
              backgroundColor: const WidgetStateProperty.fromMap({
                WidgetState.pressed: Colors.red,
                WidgetState.hovered: Colors.green,
                WidgetState.any: Colors.yellow,
              }),

              foregroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.white;
                } else if (states.contains(WidgetState.hovered)) {
                  return Colors.red;
                }
                return Colors.blue;
              }),

              textStyle: WidgetStateProperty.all(
                const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),

              // Độ nâng (bóng đổ)
              elevation: WidgetStateProperty.all(30),

              // Màu hiệu ứng khi nhấn (splash/hover)
              overlayColor: WidgetStateProperty.all(
                Colors.deepPurple.withValues(alpha: 0.5),
              ),

              shadowColor: WidgetStateProperty.all(Colors.amberAccent),

              surfaceTintColor: WidgetStateProperty.all(Colors.black45),

              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 34, vertical: 25),
              ),

              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),

              minimumSize: WidgetStateProperty.all(const Size(200, 200)),
              // fixedSize: WidgetStateProperty.all(const Size(120, 50)),
              // maximumSize: WidgetStateProperty.all(const Size(100, 100)),

              // nếu cấu hình trong Icon thì ở đây sẽ không có tác dụng
              iconColor: WidgetStateProperty.all(Colors.red),
              iconSize: WidgetStateProperty.all(75),
              iconAlignment: IconAlignment.start,

              // Viền của nút
              side: WidgetStateProperty.all(
                const BorderSide(
                  color: Colors.blue,
                  width: 5,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),

              mouseCursor: WidgetStateProperty.all(SystemMouseCursors.cell),
              alignment: Alignment.bottomRight,

              // Thời gian diễn ra các hiệu ứng chuyển trạng thái (ví dụ khi hover, focus, pressed...).
              animationDuration: const Duration(milliseconds: 300),

              // Cho phép hoặc vô hiệu hóa âm thanh hoặc rung phản hồi khi bấm nút (haptic feedback).
              enableFeedback: true,

              // Xác định kiểu hiệu ứng splash (hiệu ứng gợn nước) khi người dùng nhấn vào nút.
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
