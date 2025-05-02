import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text(
          'Hello Flutter!',
          style: TextStyle(
            // Kế thừa style từ cha. true nếu muốn giữ style từ widget cha.
            inherit: true,
            color: Colors.red,
            backgroundColor: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,

            // Khoảng cách giữa các chữ cái.
            letterSpacing: 10,

            // Khoảng cách giữa các từ.
            wordSpacing: 50,

            height: 5,
            locale: Locale('en', 'US'),
            shadows: [
              Shadow(offset: Offset(2, 2), color: Colors.black, blurRadius: 3),
            ],
            fontFeatures: [FontFeature.enable('smcp')],
            fontVariations: [FontVariation('wght', 700)],

            // TextDecoration là gạch chân, gạch giữa, gạch ngang.
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 2,

            fontFamily: 'Roboto',
            fontFamilyFallback: ['Arial', 'sans-serif'],

            package: null,
            overflow: TextOverflow.ellipsis,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),
        ),
      ),
    );
  }
}
