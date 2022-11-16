import 'package:flutter/material.dart';

const Color bluish = Color(0xFF4e5ae8);
const Color yellowCrl = Color(0xFFFFB746);
const Color pinkCrl = Color(0xFFff4667);
const Color white = Colors.white;
const primaryColor = bluish;
const Color darkGrey = Color(0xFF121212);
const Color darkHeder = Color(0xFF424242);

class MyThemes {
  static final light = ThemeData(
      primaryColor: bluish,
      appBarTheme: const AppBarTheme(color: bluish),
      brightness: Brightness.light);
  static final dark = ThemeData(
      primaryColor: darkGrey,
      appBarTheme: const AppBarTheme(color: darkGrey),
      brightness: Brightness.dark);
}
