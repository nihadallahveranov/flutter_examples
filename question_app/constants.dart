import 'package:flutter/material.dart';

final kTrueIcon = Icon(
  Icons.mood,
  color: Colors.green,
  size: 32,
);

final kFalseIcon = Icon(
  Icons.mood_bad,
  color: Colors.red,
  size: 32,
);

final List<Widget> kIconOfAnswer = []; // icons of answers, don't edit

final kQuestions = {
  'C proqramlasdirma dilidir.': true,
  "C dilinde output ucun printf function'dan istifade olunur.": true,
  "C dilinde dynamic memory allocation ucun malloc function'dan istifade olunur.":
      true,
  "malloc functioni void tipli function'dir.": false,
  "C dilinde 4 storage classes var: auto, extern, static, register": true,
  "int** x, pointer to pointer demekdir": true,
};
