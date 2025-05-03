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
          child: ElevatedButton.icon(
            onPressed: () {
              print('Button clicked!');
            },
            onLongPress: () {
              print('Long press detected!');
            },
            onHover: (isHovering) {
              print(isHovering ? 'Hovering' : 'Not hovering');
            },
            onFocusChange: (hasFocus) {
              print(hasFocus ? 'Focused' : 'Unfocused');
            },
            autofocus: false,

            // cặt mượt , để test thì label là image mới thấy rõ
            clipBehavior: Clip.antiAlias,

            style: ElevatedButton.styleFrom(
              // nếu father có cấu hình thì sẽ không có tác dụng
              iconSize: 75,
              iconColor: Colors.red,
              iconAlignment: IconAlignment.start,
            ),

            iconAlignment: IconAlignment.end,

            icon: const Icon(Icons.send, color: Colors.black),
            label: const Text('Send Message'),

            focusNode: FocusNode(),
            statesController: WidgetStatesController(),
          ),
        ),
      ),
    );
  }
}
