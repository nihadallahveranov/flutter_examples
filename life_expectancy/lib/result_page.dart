import 'package:flutter/material.dart';
import 'package:life_expectancy/calculate.dart';
import 'package:life_expectancy/colors.dart';

import 'package:life_expectancy/user_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ResultPage extends StatelessWidget {
  static const String resultPageName = '/resultPage';

  final UserData userData;
  const ResultPage({
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result Page',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'You will die at the age of ${Calculate(userData: userData).calculate().round()} :))',
              style: TextStyle(
                color: thumbSliderColor,
                fontSize: 21.0,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white70,
                ),
                child: Text(
                  'View Code',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: iconColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              onTap: () => launch(
                'https://github.com/nihadallahveranov/life_expectancy',
              ),
            )
          ],
        ),
      ),
    );
  }
}
