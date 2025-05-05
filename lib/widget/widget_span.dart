import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ContainerSpanExample()));
}

class ContainerSpanExample extends StatelessWidget {
  const ContainerSpanExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'This is a ',
            children: [
              const WidgetSpan(
                child: Icon(Icons.flutter_dash, color: Colors.blue),
                alignment: ui.PlaceholderAlignment.top,
              ),

              WidgetSpan(
                alignment: ui.PlaceholderAlignment.top,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('highlight'),
                ),
              ),

              const TextSpan(text: ' inside a sentence.'),

              WidgetSpan(
                alignment: ui.PlaceholderAlignment.bottom,
                child: Image.network(
                  'https://picsum.photos/200/300',
                  width: 50,
                  height: 50,
                ),
              ),

              WidgetSpan(
                alignment: ui.PlaceholderAlignment.top,
                child: Image.network(
                  'https://picsum.photos/200/300',
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
