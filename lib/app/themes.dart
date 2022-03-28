import 'package:flutter/material.dart';

class Themes with ChangeNotifier {
  late ThemeData selectedTheme;

  ThemeData get getTheme => selectedTheme;

  Themes(bool isDarkMode) {
    selectedTheme = isDarkMode ? dark : light;
  }

  //todo
  // void swapTheme() async {
  //   //todo
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if (selectedTheme == dark) {
  //     selectedTheme = light;
  //     prefs.setBool('isDarkTheme', false);
  //   } else {
  //     selectedTheme = dark;
  //
  //     prefs.setBool('isDarkTheme', true);
  //   }
  //   notifyListeners();
  // }

  ThemeData light = ThemeData.light().copyWith(
    backgroundColor: Colors.cyan,
    platform: TargetPlatform.android,
    primaryColor: Colors.white,
    primaryColorLight: Colors.grey.shade300,
    primaryColorDark: Color(0xFF0288D1),
    ///font
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(
          color: Colors.deepOrange,
        )),

    ///bottom nav bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrangeAccent,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.deepOrangeAccent),
        unselectedIconTheme: IconThemeData(color: Colors.grey)),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFFFFF)),
    ///outline button
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(backgroundColor: Colors.blue)),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(),
      disabledBorder: UnderlineInputBorder(),
    ),
  );

  ThemeData dark = ThemeData.dark().copyWith(
    platform: TargetPlatform.android,
    primaryColor: Colors.black,
    primaryColorLight: Colors.white,
    secondaryHeaderColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,

    ///font
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(
          color: Colors.deepOrange,
        )),

    ///bottom nav bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIconTheme: IconThemeData(color: Colors.deepOrangeAccent),
        unselectedIconTheme: IconThemeData(color: Colors.grey)),

    ///outline button
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        disabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
  );
}
