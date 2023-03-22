import 'package:flutter/material.dart';
import 'package:islami_app_f/home/hadeth/hadeth_details.dart';
import 'package:islami_app_f/home/quran/sura_details.dart';
import 'package:islami_app_f/my_theme.dart';
import 'package:islami_app_f/splash_screen.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
