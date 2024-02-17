import 'package:flutter/material.dart';

class TextCombonent extends StatelessWidget {
  final String title;
  final double? fontSize;
  final String? fontFamily;
  final Color? color;

  const TextCombonent(
      {required this.title,
      this.color = Colors.white70,
      this.fontSize = 18,
      this.fontFamily,
      super.key});

  @override
  Widget build(context) {
    return Text(
      title,
      style:
          TextStyle(color: color, fontSize: fontSize, fontFamily: fontFamily),
    );
  }
}
