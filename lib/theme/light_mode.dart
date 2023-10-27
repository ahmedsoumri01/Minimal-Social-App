import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color.fromARGB(240, 240, 240, 240),
    primary: Color.fromARGB(255, 197, 195, 195),
    secondary: Colors.grey,
    inversePrimary: Color.fromARGB(255, 81, 80, 80),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'Open Sans',
        bodyColor: const Color.fromARGB(255, 81, 80, 80),
        displayColor: Color.fromARGB(255, 34, 33, 33),
      ),
);
