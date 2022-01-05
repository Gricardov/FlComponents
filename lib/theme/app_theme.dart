import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.cyan;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primmario
        primaryColor: Colors.red,

        // Appbar Theme
        appBarTheme: const AppBarTheme(color: primary, elevation: 0)
        );

        static final ThemeData darkTheme = ThemeData.dark().copyWith(
        // Color primmario
        primaryColor: Colors.red,

        // Appbar Theme
        appBarTheme: const AppBarTheme(color: primary, elevation: 0),

        scaffoldBackgroundColor: Colors.black
        );
  }
