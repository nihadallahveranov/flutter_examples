import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAnswerTrue = true;

  int counterOfQuestion = 0;

  String question = kQuestions.keys.elementAt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: kIconOfAnswer,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 21.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: buildOfButton(
                        Icons.thumb_down,
                        Colors.red,
                        kQuestions.values.elementAt(counterOfQuestion) == false
                            ? kTrueIcon
                            : kFalseIcon,
                      ),
                    ),
                    Expanded(
                      child: buildOfButton(
                        Icons.thumb_up,
                        Colors.green,
                        kQuestions.values.elementAt(counterOfQuestion) == true
                            ? kTrueIcon
                            : kFalseIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildOfButton(IconData icon, Color color, Icon trueOrFalseIcon) {
    return FlatButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(16.0),
          color: color,
        ),
        child: Icon(
          icon,
          size: 32,
        ),
      ),
      onPressed: () {
        setState(
          () {
            counterOfQuestion++;
            if (counterOfQuestion == kQuestions.length) counterOfQuestion = 0;
            question = kQuestions.keys.elementAt(counterOfQuestion);
            kIconOfAnswer.add(trueOrFalseIcon);
          },
        );
      },
    );
  }
}
