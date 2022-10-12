import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static ThemeData appLightTheme = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: const Color(0xffFCFCFC),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color:  Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color:  Colors.black87,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 38.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
       color: const Color(0xff181725),
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      titleMedium:   TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: Colors.grey[500],
    ),
    ),
  );
}

//displayLarge, displayMedium, displaySmall
// headlineMedium, headlineSmall
// titleLarge, titleMedium, titleSmall
// bodyLarge, bodyMedium, bodySmall
// labelLarge, labelSmall
