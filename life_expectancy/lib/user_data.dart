import 'package:flutter/material.dart';

class UserData {
  final int weight;
  final int height;
  final String? selectedGen;
  final double exerciseSliderValue;
  final double cigarettesSliderValue;

  UserData({
    required this.weight,
    required this.height,
    required this.selectedGen,
    required this.exerciseSliderValue,
    required this.cigarettesSliderValue,
  });
}
