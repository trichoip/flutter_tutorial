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
            onPressed: () {
              print('Button Pressed');
            },
            onLongPress: () {
              print('Button Long Pressed');
            },
            onHover: (isHovered) {
              print('Hover: $isHovered');
            },

            // button được focus (tức là đang được chọn bằng bàn phím hoặc các phương thức nhập liệu khác)
            // dùng Tab để chuyển focus giữa các nút
            onFocusChange: (isFocused) {
              print('Focus changed: $isFocused');
            },

            // Nếu true, nút sẽ tự động focus khi widget được vẽ lên UI.
            autofocus: true,

            // cặt mượt , để test thì child là image mới thấy rõ
            clipBehavior: Clip.hardEdge,

            style: const ButtonStyle(),

            // MaterialStatesController
            statesController: WidgetStatesController(),
            focusNode: FocusNode(),

            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
