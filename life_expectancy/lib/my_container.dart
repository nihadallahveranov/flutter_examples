import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final Widget? child;

  const MyContainer({this.color = Colors.white70, this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: color,
      ),
      child: child,
    );
  }
}
