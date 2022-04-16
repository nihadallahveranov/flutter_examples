import 'package:life_expectancy/user_data.dart';

class Calculate {
  final UserData userData;

  Calculate({
    required this.userData,
  });

  double calculate() {
    double result;
    result = 90 +
        userData.height / 10 -
        userData.weight / 10 +
        userData.exerciseSliderValue -
        userData.cigarettesSliderValue;
    return userData.selectedGen == 'Women' ? result += 3 : result;
  }
}
