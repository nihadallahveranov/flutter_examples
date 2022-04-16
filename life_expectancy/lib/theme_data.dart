import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    accentColor: Colors.amber,
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(221, 38, 37, 37),
    ),
    scaffoldBackgroundColor: Color.fromARGB(221, 38, 37, 37),
    brightness: Brightness.dark,
  );
}
