import 'package:chatappui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kaPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kaContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kaContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kaPrimaryColor,
      secondary: kaSecondaryColor,
      error: kaErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kaContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kaContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kaPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kaPrimaryColor,
    scaffoldBackgroundColor: kaContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kaContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kaContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kaPrimaryColor,
      secondary: kaSecondaryColor,
      error: kaErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kaContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kaContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kaPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme =
    AppBarTheme(centerTitle: false, elevation: 0, color: kaPrimaryColor);
