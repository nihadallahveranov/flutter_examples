import 'package:flutter/material.dart';
import 'package:life_expectancy/colors.dart';

class ExpandedMySlider extends StatelessWidget {
  final void Function(double newValue) onChanged;
  final double sliderValue;
  final int? divisions;
  final double maxBorderOfSlider;

  ExpandedMySlider(
      {required this.maxBorderOfSlider,
      this.divisions,
      required this.sliderValue,
      required this.onChanged,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Slider.adaptive(
        divisions: divisions,
        thumbColor: thumbSliderColor,
        activeColor: activeSliderColor,
        inactiveColor: inactiveSliderColor,
        autofocus: true,
        min: 0,
        max: maxBorderOfSlider,
        value: sliderValue,
        onChanged: onChanged,
      ),
    );
  }
}
