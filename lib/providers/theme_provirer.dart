import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    backgroundColor:Colors.black26,
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
      backgroundColor:Colors.white,
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
    canvasColor: Color.fromRGBO(255, 255, 255, 1.0),
    bottomAppBarColor: Colors.white,
  );
}