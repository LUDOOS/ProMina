import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    fontFamily: '',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(),
    textTheme: const TextTheme(),
  );

  static ThemeData dark = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    fontFamily: '',
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(),
    textTheme: const TextTheme(),
  );
}
