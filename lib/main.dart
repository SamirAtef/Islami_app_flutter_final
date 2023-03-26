import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_f/home/hadeth/hadeth_details.dart';
import 'package:islami_app_f/home/providers/settings_provider.dart';
import 'package:islami_app_f/home/quran/sura_details.dart';
import 'package:islami_app_f/my_theme.dart';
import 'package:islami_app_f/splash_screen.dart';
import 'package:provider/provider.dart';

import 'home/home_screen.dart';
void main() {
  runApp(ChangeNotifierProvider<SettingsProvider>(
      create: (buildContext) {
        return SettingsProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.currentLang),
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
