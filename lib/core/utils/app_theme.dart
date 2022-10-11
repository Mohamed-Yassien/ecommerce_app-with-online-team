import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appLightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffFCFCFC),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffFCFCFC),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffFCFCFC),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xff53B175),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xff030303),
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xff030303),
      ),
    ),
  );
}
