import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0, 'Select color must be great then 0'),
        assert(selectColor < colorList.length,
            'Select color must be less then ${colorList.length - 1}');
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
