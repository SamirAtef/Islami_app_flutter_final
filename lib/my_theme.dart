import 'package:flutter/material.dart';

class MyTheme {
  static final Color primaryColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
        headlineMedium: TextStyle(
            fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black),
        headlineSmall: TextStyle(fontSize: 24, color: Colors.black),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
}
