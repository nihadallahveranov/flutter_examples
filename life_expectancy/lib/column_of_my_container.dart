import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/colors.dart';

class ColumnOfMyContainer extends StatelessWidget {
  late final String _stringOfGen;
  late final IconData _iconOfGen;

  ColumnOfMyContainer(
      {required String stringOfGen, required IconData iconOfGen}) {
    _stringOfGen = stringOfGen;
    _iconOfGen = iconOfGen;
  }

  get getStringOfGen => _stringOfGen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          _iconOfGen,
          size: 50.0,
          color: iconColor,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          _stringOfGen,
          style: TextStyle(
            color: iconColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
