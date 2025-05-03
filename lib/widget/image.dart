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
        body: Column(
          children: [
            Image(
              // image: MemoryImage(),
              // image: FileImage(File('/assets/images/scaffold.png')),
              // image: const NetworkImage('https://picsum.photos/200/300'),
              // image: const AssetImage('images/scaffold.png'),
              image: const ResizeImage(
                NetworkImage('https://picsum.photos/200/300'),
                width: 200,
                height: 200,
              ),

              fit: BoxFit.none,
              // width: 300,
              // height: 500,
              // color: Colors.blue.withValues(alpha: 0.5),
              // colorBlendMode: BlendMode.overlay,
              // opacity: const AlwaysStoppedAnimation(0.3),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50, color: Colors.red);
              },

              alignment: Alignment.bottomLeft,

              // Lặp lại ảnh (ví dụ: repeat x/y)
              repeat: ImageRepeat.repeatX,
              semanticLabel: 'Flutter Logo',
              isAntiAlias: true,

              // Chất lượng lọc ảnh khi scale
              filterQuality: FilterQuality.high,
            ),
            Image.asset('images/scaffold.png', height: 200, width: 200),
            Image.network(
              'https://picsum.photos/200/300',
              height: 200,
              width: 200,
            ),
            // Image.memory(),
            // Image.file(),
          ],
        ),
      ),
    );
  }
}
