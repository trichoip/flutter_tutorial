import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: CustomIconButton())),
    );
  }
}

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({super.key});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      onHover: (hovering) {},
      onLongPress: () {},

      iconSize: 40, // kích thước icon
      padding: const EdgeInsets.all(80), // khoảng cách trong
      alignment: Alignment.bottomRight,
      splashRadius: 60,
      color: Colors.grey,
      focusColor: Colors.orange,
      hoverColor: Colors.blue,
      highlightColor: Colors.purple,
      splashColor: Colors.greenAccent,
      disabledColor: Colors.black26,
      tooltip: 'Yêu thích',

      mouseCursor: SystemMouseCursors.cell,
      autofocus: false,
      isSelected: isFavorite,
      selectedIcon: const Icon(Icons.home, color: Colors.red),
      icon: const Icon(Icons.favorite_border),

      style: IconButton.styleFrom(
        minimumSize: const Size(300, 300),
        backgroundColor: Colors.white,
      ),
    );
  }
}
