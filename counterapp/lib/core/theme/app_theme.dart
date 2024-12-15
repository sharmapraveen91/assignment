import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontWeight: FontWeight.w900, color: Colors.blue),
    ),
  );
}
