import 'package:flutter/material.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/theme_data.dart';
import 'package:life_expectancy/user_data.dart';
import 'my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Expectancy',
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (context) => MyHomePage(),
      },
    );
  }
}
