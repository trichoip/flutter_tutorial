import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FocusNode myFocusNode = FocusNode(
    debugLabel: 'TextFieldFocus',
    onKeyEvent: (FocusNode node, KeyEvent event) {
      print('Pressed: ${event.logicalKey.debugName}');
      return KeyEventResult.handled;
    },
    skipTraversal: false,
    canRequestFocus: true,
    descendantsAreFocusable: true,
    descendantsAreTraversable: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FocusNode Example')),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Focus(
                focusNode: myFocusNode,
                child: const TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Nhập gì đó'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  myFocusNode.requestFocus(); // thủ công focus
                },
                child: const Text('Focus TextField'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
