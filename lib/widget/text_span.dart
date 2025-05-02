import 'package:flutter/gestures.dart';
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
          child: RichText(
            text: TextSpan(
              text: 'Xin chào ',
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),

                  // nên tách code chổ này ra và sài StatefulWidget để dispose TapGestureRecognizer khi không cần thiết
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          print('Chuột click vào Flutter');
                        },

                  // Thay đổi kiểu con trỏ chuột khi rê vào văn bản này (hữu ích trên web/desktop).
                  mouseCursor: SystemMouseCursors.cell,

                  onEnter: (event) {
                    print('Chuột vào:');
                    print('- Vị trí global: ${event.position}');
                    print('- Thiết bị: ${event.kind}');
                  },
                  onExit:
                      (event) => {
                        print('Chuột rời tại vị trí: ${event.position}'),
                      },

                  // Nếu là true, văn bản sẽ được đánh vần ra từng ký tự bởi trình đọc màn hình.
                  spellOut: false,
                ),
                const TextSpan(text: ' Developer!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
