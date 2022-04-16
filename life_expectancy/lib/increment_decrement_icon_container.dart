import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/colors.dart';

class IncrementDecrementIconContainer extends StatelessWidget {
  final IconData inrecemntOrDecrementIcon;

  const IncrementDecrementIconContainer({
    required this.inrecemntOrDecrementIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      child: FaIcon(
        inrecemntOrDecrementIcon,
        color: iconColor,
      ),
    );
  }
}
