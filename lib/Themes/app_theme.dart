import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)));

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: const AppBarTheme(
      color: Colors.black12,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
