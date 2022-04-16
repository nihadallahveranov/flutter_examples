import 'package:flutter/material.dart';
import 'package:life_expectancy/colors.dart';

class MyExpandedText extends StatelessWidget {
  final String text;
  final double fontSize;
  const MyExpandedText({required this.fontSize, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: iconColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
