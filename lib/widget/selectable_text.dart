import 'dart:ui';

import 'package:flutter/gestures.dart';
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
    return SelectableText(
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra '
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra '
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra '
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra '
      'Flutter Text Widget Demo: Đây là một đoạn văn bản khá dài để kiểm tra ',

      // Căn lề văn bản
      textAlign: TextAlign.center,

      // Số dòng tối đa
      maxLines: 3,
      minLines: 2,

      // Hướng của văn bản
      textDirection: TextDirection.ltr,

      // Phóng to/thu nhỏ văn bản theo tỉ lệ
      textScaler: const TextScaler.linear(3),

      // Gán nhãn cho trình đọc màn hình
      semanticsLabel: 'Đây là nhãn cho trình đọc màn hình',

      // Kiểm soát khoảng cách dòng chi tiết hơn
      strutStyle: const StrutStyle(),

      // Thiết lập kiểu chữ
      style: const TextStyle(),

      showCursor: true,
      cursorColor: Colors.red,
      cursorWidth: 100,
      cursorHeight: 100,
      cursorRadius: const Radius.circular(20),

      autofocus: true,

      // 	Cho phép chọn văn bản.
      enableInteractiveSelection: true,

      // Xử lý sự kiện khi người dùng chạm vào text.
      onTap: () {
        print('Text tapped!');
      },

      // Callback khi vùng văn bản được chọn thay đổi.
      onSelectionChanged: (selection, cause) {
        print('Selection changed: $selection cause: $cause');
      },

      // Kiểu chiều cao khi chọn text. nên để mặc định
      selectionHeightStyle: BoxHeightStyle.tight,

      // Kiểu chiều rộng khi chọn text. nên để mặc định
      selectionWidthStyle: BoxWidthStyle.tight,

      // Cách xử lý khi kéo chọn text. nên để mặc định
      dragStartBehavior: DragStartBehavior.start,

      // Tùy chỉnh hành vi cuộn (ví dụ hiệu ứng cuộn iOS/Android).
      // CupertinoScrollBehavior()
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        scrollbars: false, // Tắt scrollbar
        overscroll: false, // Tắt glow
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),

      // Tuỳ chỉnh menu chọn văn bản.
      // chỉ khi custom mới sài selectionControls , còn không thì nên dùng mặc định để hệ thông tự chọn
      // materialTextSelectionControls
      // cupertinoTextSelectionControls
      // adaptiveTextSelectionControls
      // desktopTextSelectionControls
      selectionControls: MaterialTextSelectionControls(), // Android
      // selectionControls: CupertinoTextSelectionControls(), // IOS
      // selectionControls: cupertinoTextSelectionControls,
      // selectionControls: materialTextSelectionControls,

      // Cách văn bản cuộn: vật lý tự nhiên, không cuộn...  nên để mặc định
      // BouncingScrollPhysics	Cuộn có hiệu ứng lò xo khi chạm giới hạn (kiểu iOS)
      // ClampingScrollPhysics	Cuộn chạm giới hạn thì dừng cứng (kiểu Android)
      // NeverScrollableScrollPhysics	Không cho cuộn dù nội dung có tràn
      // AlwaysScrollableScrollPhysics	Luôn cho cuộn, kể cả khi nội dung không đủ dài
      // PageScrollPhysics	Chỉ cho cuộn từng trang (xài trong PageView)
      // FixedExtentScrollPhysics	Cuộn từng bước cố định, hay dùng trong ListWheelScrollView
      // RangeMaintainingScrollPhysics	Khi nội dung thay đổi, cố giữ nguyên vùng scroll cũ
      scrollPhysics: const BouncingScrollPhysics().applyTo(
        const ClampingScrollPhysics(),
      ),
      // scrollPhysics: const ClampingScrollPhysics(),

      // Tuỳ chỉnh menu chuột phải (context menu).  nên để mặc định
      contextMenuBuilder: null,

      // Tuỳ chỉnh kính lúp khi chọn text. nên để mặc định
      magnifierConfiguration: const TextMagnifierConfiguration(
        magnifierBuilder: null,
        shouldDisplayHandlesInMagnifier: true,
      ),
    );
  }
}
