import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

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
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: const Color(0xff030303),
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: const Color(0xff030303),
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 38.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 13.sp,
        letterSpacing: 1.4.sp,
        color: Colors.white,
      ),
    ),
  );
}

//displayLarge, displayMedium, displaySmall
// headlineMedium, headlineSmall
// titleLarge, titleMedium, titleSmall
// bodyLarge, bodyMedium, bodySmall
// labelLarge, labelSmall
