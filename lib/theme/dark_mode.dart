import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color.fromARGB(255, 38, 37, 37),
    primary: Color.fromARGB(255, 85, 85, 85),
    secondary: Color.fromARGB(255, 105, 105, 105),
    inversePrimary: Color.fromARGB(255, 215, 212, 212),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'Open Sans',
        bodyColor: Color.fromARGB(255, 215, 214, 214),
        displayColor: Color.fromARGB(255, 235, 234, 234),
      ),
);
