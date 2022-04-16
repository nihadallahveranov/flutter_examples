import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:life_expectancy/colors.dart';
import 'package:life_expectancy/column_of_my_container.dart';
import 'package:life_expectancy/increment_decrement_icon_container.dart';
import 'package:life_expectancy/my_expanded_text.dart';
import 'package:life_expectancy/my_expanded_widget.dart';
import 'package:life_expectancy/my_container.dart';
import 'package:life_expectancy/expanded_my_slider.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = '/';

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int weight = 70;
  int height = 180;
  String? selectedGen;
  double exerciseSliderValue = 0;
  double cigarettesSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            FaIcon(
              FontAwesomeIcons.hourglass,
              size: 28.0,
            ),
          ],
        ),
        title: Text(
          'Life Expectancy',
          style: TextStyle(
            color: appBarColor,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                buildExpandedHeightAndWeightContainer(
                  label: 'Height',
                  counterOfHeightAndWeight: height,
                ),
                buildExpandedHeightAndWeightContainer(
                  label: 'Weight',
                  counterOfHeightAndWeight: weight,
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyExpandedWidget(),
                  MyExpandedWidget(),
                  MyExpandedText(
                    fontSize: 16.0,
                    text: 'How many days a week do you exercise?',
                  ),
                  MyExpandedWidget(),
                  MyExpandedText(
                    fontSize: 27.0,
                    text: exerciseSliderValue.round().toString(),
                  ),
                  MyExpandedWidget(),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: <Widget>[
                        MyExpandedWidget(),
                        ExpandedMySlider(
                          onChanged: (double newValue) {
                            setState(() {
                              exerciseSliderValue = newValue;
                            });
                          },
                          divisions: 7,
                          maxBorderOfSlider: 7,
                          sliderValue: exerciseSliderValue,
                        ),
                        MyExpandedWidget(),
                      ],
                    ),
                  ),
                  MyExpandedWidget(),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyExpandedWidget(),
                  MyExpandedWidget(),
                  MyExpandedText(
                    fontSize: 16.0,
                    text: 'How many cigarettes a day do you smoke?',
                  ),
                  MyExpandedWidget(),
                  MyExpandedText(
                    fontSize: 27.0,
                    text: cigarettesSliderValue.round().toString(),
                  ),
                  MyExpandedWidget(),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: <Widget>[
                        MyExpandedWidget(),
                        ExpandedMySlider(
                          maxBorderOfSlider: 50,
                          sliderValue: cigarettesSliderValue,
                          onChanged: (double newValue) {
                            setState(() {
                              cigarettesSliderValue = newValue;
                            });
                          },
                        ),
                        MyExpandedWidget(),
                      ],
                    ),
                  ),
                  MyExpandedWidget(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGen = 'Women';
                      });
                    },
                    child: MyContainer(
                      color: selectedGen == 'Women'
                          ? buttonSelectedColor
                          : thumbSliderColor,
                      child: ColumnOfMyContainer(
                        stringOfGen: 'Women',
                        iconOfGen: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGen = 'Men';
                      });
                    },
                    child: MyContainer(
                      color: selectedGen == 'Men'
                          ? buttonSelectedColor
                          : thumbSliderColor,
                      child: ColumnOfMyContainer(
                        stringOfGen: 'Men',
                        iconOfGen: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: thumbSliderColor,
              ),
              child: FlatButton(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.transparent,
                onPressed: () {
                  if (selectedGen == null) {
                    showDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(
                          'Please Select Gen',
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        actions: [
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: Text(
                              'OK',
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          userData: UserData(
                            height: this.height,
                            cigarettesSliderValue: this.cigarettesSliderValue,
                            exerciseSliderValue: this.exerciseSliderValue,
                            selectedGen: this.selectedGen,
                            weight: this.weight,
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  ' ' * 5 + 'Calculate' + ' ' * 5,
                  style: TextStyle(
                    color: iconColor,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }

  Expanded buildExpandedHeightAndWeightContainer({
    required String label,
    required int counterOfHeightAndWeight,
  }) {
    return Expanded(
      child: MyContainer(
        child: Column(
          children: <Widget>[
            MyExpandedWidget(),
            MyExpandedWidget(),
            MyExpandedText(
              fontSize: 18.0,
              text: label,
            ),
            MyExpandedText(
              fontSize: 24.0,
              text: counterOfHeightAndWeight.toString(),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        label == 'Height' ? height-- : weight--;
                      });
                    },
                    child: IncrementDecrementIconContainer(
                      inrecemntOrDecrementIcon: FontAwesomeIcons.minus,
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        label == 'Height' ? height++ : weight++;
                      });
                    },
                    child: IncrementDecrementIconContainer(
                      inrecemntOrDecrementIcon: FontAwesomeIcons.plus,
                    ),
                  ),
                ],
              ),
            ),
            MyExpandedWidget(),
            MyExpandedWidget(),
          ],
        ),
      ),
    );
  }
}
