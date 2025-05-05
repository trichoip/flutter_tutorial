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
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.fill,
                    width: 300,
                    height: 300,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.fill,
                    width: 300,
                    height: 300,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.fill,
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Image(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  fit: BoxFit.fill,
                  width: 300,
                  height: 300,
                ),

                Image(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  fit: BoxFit.fill,
                  width: 300,
                  height: 300,
                ),
                Image(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  fit: BoxFit.fill,
                  width: 500,
                  height: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
