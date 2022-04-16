import 'package:flutter/material.dart';

class MyExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 12.0,
      ),
    );
  }
}
